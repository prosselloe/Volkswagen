import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:volkswagen/services/vin_service.dart';

class VinDecoderDialog extends StatefulWidget {
  const VinDecoderDialog({super.key});

  @override
  State<VinDecoderDialog> createState() => _VinDecoderDialogState();
}

class _VinDecoderDialogState extends State<VinDecoderDialog> {
  final _vinController = TextEditingController();
  String? _errorText;
  Map<String, String>? _decodedData;

  void _decodeVin() {
    final vin = _vinController.text.trim().toUpperCase();
    if (vin.length != 17) {
      setState(() {
        _errorText = 'El VIN ha de tenir 17 caràcters.';
        _decodedData = null;
      });
      return;
    }

    final wmi = vin.substring(0, 3);
    final vds = vin.substring(3, 9);
    final vis = vin.substring(9);
    final plantCode = vin[10];
    final sequenceNumber = vin.substring(11);

    final country = VinService.decodeWmi(wmi);
    final modelResult = VinService.decodeVin(vin);
    final plant = VinService.getPlantFromCode(plantCode, modelResult?.modelYear);

    setState(() {
      if (modelResult != null) {
        _decodedData = {
          'Model de vehicle': modelResult.modelName,
          'Any del model': modelResult.modelYear.toString(),
          'País de fabricació': country ?? 'Desconegut',
          'Planta de muntatge': plant ?? 'Desconegut',
          'Fabricant': 'Volkswagen',
          'Número de seqüència': sequenceNumber,
          'WMI': wmi,
          'VDS': vds,
          'VIS': vis,
        };
        _errorText = null;
      } else {
        _decodedData = null;
        _errorText = 'No s\'ha pogut descodificar el VIN.';
      }
    });
  }

  void _launchSearch(String model, String year) async {
    final query = Uri.encodeComponent('$model $year');
    final url = Uri.parse('https://www.google.com/search?q=$query');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No s\'ha pogut obrir l\'enllaç')),
      );
    }
  }

  void _showVinInformationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Informació sobre el VIN (des de 1980)'),
        content: const SingleChildScrollView(
          child: Text(
            '''Identificació dels números de bastidor Volkswagen a partir de 1980

Els models Volkswagen fabricats a partir de l'1 d'agost de 1979 (any de model 1980) van adoptar aquest nou format de número de bastidor. Els dígits 1-3 són l'identificador mundial del fabricant (WMI), els dígits 4-9 el descriptor del vehicle (VDS), i la resta és l'identificador del cotxe en particular (VIS).

En la pràctica, es pot "descodificar" el número de la següent manera:

**Dígit 1: Lloc de fabricació**
  - S-Z: Europa
  - 1-5: Amèrica del Nord

**Dígit 2: Fabricant**
  - V: Volkswagen

**Dígit 3: Tipus de vehicle**
  - W: Cotxes de passatgers VW
  - 1: Vehicles comercials VW
  - 2: Models tipus furgoneta VW

**El VDS (Vehicle Descriptor Section)**

A continuació, apareix el tipus de vehicle amb informació sobre la plataforma i la carrosseria. Els dígits 4, 5, 6 i 9 es consideren "de farciment" (sovint "ZZZ" per als cotxes venuts a Europa).

**Dígits 7 i 8: Designació del tipus de model VW**
  - Aquests dos dígits identifiquen la plataforma o model. Exemples:
  - 17: Golf Mk1
  - 19: Golf Mk2
  - 7H: T5
  - 70: Furgonetes i pick-ups T4
  - 86: Primers Polo

**Dígit 10: Any del model**
  - Aquest dígit indica l'any de producció, que va de l'1 d'agost al 31 de juliol.
  - Comença amb 'A' per a 1980, 'B' per a 1981, i així successivament.
  - Les lletres I, Q, U, Z i el número 0 no s'utilitzen.
  - El cicle es repeteix, de manera que 'A' pot ser 1980 o 2010.

**Dígit 11: Fàbrica de construcció**
  - Indica la planta de fabricació del vehicle. Exemples:
  - W: Wolfsburg (Alemanya)
  - E: Emden (Alemanya)
  - M: Puebla (Mèxic)
  - V: Westmoreland (EUA) o Palmela (Portugal) (es desambigua amb el dígit 1).

**Dígits 12-17: Número de sèrie exclusiu**
  - Aquests últims sis dígits són el número de producció seqüencial del vehicle en aquella fàbrica i any, començant per 000001.'''
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Tancar'),
          ),
        ],
      ),
    );
  }

 @override
Widget build(BuildContext context) {
  return AlertDialog(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Descodificador de VIN'),
        IconButton(
          icon: const Icon(Icons.info_outline),
          onPressed: () => _showVinInformationDialog(context),
          tooltip: 'Informació sobre el VIN',
        ),
      ],
    ),
    content: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Per a vehicles fabricats al període 1980-2009 (17 dígits).',
            style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _vinController,
            decoration: InputDecoration(
              hintText: 'Introdueix el número de VIN',
              errorText: _errorText,
            ),
          ),
          if (_decodedData != null)
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _decodedData!.entries.map((entry) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: [
                          TextSpan(
                            text: '${entry.key}: ',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          if (entry.key == 'Model de vehicle')
                            TextSpan(
                              text: entry.value,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchSearch(entry.value, _decodedData!['Any del model']!);
                                },
                            )
                          else
                            TextSpan(text: entry.value),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    ),
    actions: [
      TextButton(
        onPressed: () => Navigator.of(context).pop(),
        child: const Text('Tancar'),
      ),
      ElevatedButton(
        onPressed: _decodeVin,
        child: const Text('Descodificar'),
      ),
    ],
  );
}
}
