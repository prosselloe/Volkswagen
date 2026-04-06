import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volkswagen/providers/model_provider.dart';

class ChassisSearchDialog extends StatefulWidget {
  const ChassisSearchDialog({super.key});

  @override
  State<ChassisSearchDialog> createState() => _ChassisSearchDialogState();
}

class _ChassisSearchDialogState extends State<ChassisSearchDialog> {
  final _chassisNumberController = TextEditingController();
  Map<String, dynamic>? _searchResultData;
  String? _errorText;

  void _searchChassis() {
    final modelProvider = Provider.of<ModelProvider>(context, listen: false);
    final result = modelProvider.searchByChassis(_chassisNumberController.text.trim());

    if (result.containsKey('error')) {
      setState(() {
        _searchResultData = null;
        _errorText = result['error'];
      });
    } else {
      setState(() {
        _searchResultData = result;
        _errorText = null;
      });
    }
  }

  void _showChassisInformationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Informació sobre el VIN de VW'),
        content: const SingleChildScrollView(
          child: Text(
            '''Comprendre els números de xassís (VIN) i de motor de Volkswagen - Fins a l'agost de 1979.

Des de 1945, els vehicles Volkswagen han portat els seus números de sèrie d'identificació en diversos formats. Els detalls següents només s'apliquen a la producció alemanya; altres varien.

**Tipus 1 (Cotxes) fins al 31 de juliol de 1964**

*Números de Xassís / VIN...*

Fins al 31 de desembre de 1955, els números de xassís (VIN) eren de sis dígits (i alguns al final del període, de set dígits) amb el prefix 1-, és a dir, el dígit 1 i un guió. Ex: 1-063 289

De l'1 de gener de 1956 al 31 de juliol de 1964, es va eliminar el prefix 1- i els vehicles es van numerar seqüencialment.
Vegeu 'Aparença dels números de sèrie al cotxe/furgoneta i a la documentació' més avall.

La ubicació del número de xassís (VIN) als vehicles de Tipus 1 era originalment en una petita placa soldada davant de la palanca de canvis, posteriorment es va traslladar a un estampat directe darrere del fre de mà i després sota el seient del darrere, en cada cas sobre la biga central del xassís.

*Números de Motor...*

Fins al 31 de desembre de 1955, els números de motor, com els de xassís, tenien el prefix 1-, és a dir, el dígit 1 i un guió. Ex: 1-100 778. Això s'aplicava tant a les unitats de 25 CV com a les de 30 CV.

De l'1 de gener de 1956 al 31 de juliol de 1965, es va eliminar el prefix 1- i les unitats es van numerar seqüencialment.
Vegeu 'Aparença dels números de sèrie al cotxe/furgoneta i a la documentació' més avall.

El número de motor es troba a la pestanya del càrter posterior, sota el generador.

**Tipus 1 (Cotxes) de l'1 d'agost de 1964 al 31 de juliol de 1979**

De l'1 d'agost de 1964 al 31 de juliol de 1969, els números de xassís (VIN) eren de nou dígits, formats per tres dígits d'identificació més sis dígits de número de sèrie. Els anys 1966 i 1968 van ser excepcions, ja que les quantitats de producció van provocar l'addició d'un dígit addicional a la quarta posició des de l'esquerra.
Exemple: 115 123 456 - Vegeu 'Aparença dels números de sèrie al cotxe/furgoneta i a la documentació' més avall.

De l'1 d'agost de 1969 al 31 de juliol de 1979, els números de xassís (VIN) eren de deu dígits, formats per tres dígits d'identificació més set dígits de número de sèrie. Vegeu a continuació els detalls sobre el quart dígit des de l'esquerra.
Exemple: 114 2123 456 - Vegeu 'Aparença dels números de sèrie al cotxe/furgoneta i a la documentació' més avall.
La composició del número de xassís és la següent, comptant des de l'esquerra...

- El primer dígit defineix el tipus de vehicle (1: productes basats en el Tipus 1/Escarabat).
- El segon dígit defineix el model (1: berlina, 3: gamma 1303, 4: Karmann Ghia, 5: Karmann Cabriolet, 8: models 181/2).
- El tercer dígit defineix l'any de producció (ex: 5 per a 1965).
- El quart dígit (només post 1969) és un 2.
- La resta són el número de sèrie.

La ubicació del VIN es manté sota el seient del darrere, però també pot ser en una placa visible al parabrisa esquerre en models per a certs mercats (notablement EUA).

El número de motor es troba a la pestanya del càrter posterior, sota el suport del generador.

**Tipus 2 (Furgonetes, Autobusos, etc.) fins al 31 de juliol de 1979**

Fins al 31 de desembre de 1955, els números de xassís tenien cinc o sis dígits amb el prefix 20-. Ex: 20-123 456.

De l'1 de gener de 1956 al 31 de juliol de 1964, el prefix 20- va ser eliminat.

La ubicació del VIN va canviar diverses vegades: inicialment a la mampara del motor, després al panell transversal posterior, i finalment al conducte d'aire fresc sobre el seient davanter dret.

**Tipus 2 de l'1 d'agost de 1964 al 31 de juliol de 1979**

La composició és similar a la del Tipus 1, però amb el primer dígit sent un 2.

- El primer dígit defineix el tipus de vehicle (2: productes basats en Furgoneta).
- El segon dígit defineix el model (1: furgoneta de repartiment, 2: Micro Bus, 3: Kombi, etc.).
- El tercer dígit defineix l'any de producció.
- El quart dígit (només post 1969) és un 2.

La ubicació del VIN va continuar canviant, passant de la placa d'identificació sobre la cabina, a la coberta del motor, i finalment al costat dret del compartiment del motor.

**Tipus 3 (Cotxes) d'abril de 1961 fins al final de la producció**

Inicialment, un número de sèrie de sis dígits. La ubicació era sota el seient posterior, al túnel central del xassís.

A partir de l'1 d'agost de 1964, el format va canviar a nou i després a deu dígits, similar als altres tipus.

- El primer dígit defineix el tipus de vehicle (3: vehicles Tipus 3).
- El segon dígit defineix el model (1: berlina, 4: Karmann Ghia, 6: Variant).

**Tipus 4 (Cotxes) i K70**

Aquests models també van seguir una estructura de numeració similar, començant amb el dígit 4.

**Aparença dels números de sèrie**

El format amb espais que es mostra aquí és per a la documentació; NO apareix amb espais quan està estampat al vehicle. És normal que el número estampat estigui precedit i seguit per un caràcter semblant a una estrella.

La informació disponible aquí pretén proporcionar als entusiastes una referència sobre l'antiguitat del seu vehicle i motor.

*El Volkswagen Owners Club of Great Britain no garanteix l'exactitud d'aquesta informació, però la considera correcta en el moment de la publicació.*'''
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
          const Text('Cerca per número de bastidor'),
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () => _showChassisInformationDialog(context),
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
              'Habitualment per a vehicles fabricats fins a 1980.',
              style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _chassisNumberController,
              decoration: InputDecoration(
                hintText: 'Introdueix el número de bastidor',
                errorText: _errorText,
              ),
              keyboardType: TextInputType.number,
            ),
            if (_searchResultData != null)
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: _searchResultData!.entries.map((entry) {
                    final bool isModelLink = entry.key == 'Model';
                    final bool isIdField = entry.key == 'id';

                    if (isIdField) return Container();

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              '${entry.key}:',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: isModelLink
                                ? GestureDetector(
                                    onTap: () {
                                      final modelName = _searchResultData!['Model'];
                                      Navigator.of(context).pop();
                                      Provider.of<ModelProvider>(context, listen: false).search(modelName);
                                    },
                                    child: Text(
                                      '${entry.value}',
                                      style: TextStyle(
                                        color: Theme.of(context).colorScheme.primary,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  )
                                : Text(
                                    '${entry.value}',
                                  ),
                          ),
                        ],
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
          onPressed: _searchChassis,
          child: const Text('Cercar'),
        ),
      ],
    );
  }
}
