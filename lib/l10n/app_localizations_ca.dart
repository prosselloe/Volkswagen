// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'Volkswagen Classics';

  @override
  String get chassisSearchDialogTitle => 'Cerca per Xassís';

  @override
  String get chassisSearchDialogInfoTooltip => 'Informació sobre el xassís';

  @override
  String get chassisSearchDialogSubtitle =>
      'Introduïu el xassís per trobar el model i la informació de fabricació.';

  @override
  String get chassisSearchDialogHint => 'Introduïu el Xassís';

  @override
  String get chassisSearchDialogCloseButton => 'Tancar';

  @override
  String get chassisSearchDialogSearchButton => 'Cercar';

  @override
  String get vinInfoTitle => 'Què és el xassís?';

  @override
  String get vinInfoContent =>
      'El xassís, també conegut com a VIN (Vehicle Identification Number) en models més moderns, és un codi únic que identifica cada vehicle. En els models clàssics de VW, aquest número és crucial per determinar l\'any, el model i les característiques originals del cotxe.';

  @override
  String get vinInfoCloseButton => 'Tancar';

  @override
  String get aboutScreenTitle => 'Quant a l\'aplicació';

  @override
  String get vinDecoderTooltip => 'Descodificador de VIN';

  @override
  String get chassisSearchTooltip => 'Cercar per xassís';

  @override
  String get filterByPlantTooltip => 'Filtrar per planta';

  @override
  String get allPlants => 'Totes les plantes';

  @override
  String get sortTooltip => 'Ordenar';

  @override
  String get sortByName => 'Ordenar per nom';

  @override
  String get sortByYear => 'Ordenar per any';

  @override
  String get sortByUnits => 'Ordenar per unitats';

  @override
  String get defaultSort => 'Per defecte';

  @override
  String get searchModelsHint => 'Cercar models...';

  @override
  String activeFilter(Object plantName) {
    return 'Filtre actiu: $plantName';
  }

  @override
  String get noResultsFound => 'No s\'han trobat resultats';

  @override
  String get technicalSheet => 'Fitxa tècnica';

  @override
  String get designer => 'Dissenyador';

  @override
  String get unitsProduced => 'Unitats produïdes';

  @override
  String get engine => 'Motor';

  @override
  String get topSpeed => 'Velocitat màxima';

  @override
  String get manufacturingPlant => 'Planta de fabricació';

  @override
  String get modelYearsAndChassis => 'Anys de model i xassís';

  @override
  String modelYear(Object year) {
    return 'Any model: $year';
  }

  @override
  String get relatedModels => 'Models Relacionats';

  @override
  String get exportModelsToCsv => 'Exporta Models a CSV';

  @override
  String get credits => 'Crèdits';

  @override
  String get loading => 'Carregant...';

  @override
  String get errorLoadingInfo => 'Error al carregar la informació.';

  @override
  String couldNotOpenUrl(Object url) {
    return 'No s\'ha pogut obrir $url';
  }

  @override
  String get csvDataMessage =>
      'Aquí teniu les dades dels models en format CSV.';

  @override
  String errorExportingData(Object error) {
    return 'Error en exportar les dades: $error';
  }

  @override
  String get chassisSearchDialogModel => 'Model';

  @override
  String get vinDecoderDialogTitle => 'Descodificador de VIN';

  @override
  String get vinDecoderDialogInfoTooltip => 'Informació sobre el VIN';

  @override
  String get vinDecoderDialogSubtitle =>
      'Per a vehicles fabricats al període 1980-2009 (17 dígits).';

  @override
  String get vinDecoderDialogHint => 'Introduïu el VIN';

  @override
  String get vinDecoderDialogDecodeButton => 'Descodificar';

  @override
  String get vinDecoderDialogCloseButton => 'Tancar';

  @override
  String get vinDecoderDialogError17Chars => 'El VIN ha de tenir 17 caràcters.';

  @override
  String get vinDecoderDialogErrorDecoding =>
      'No s\'ha pogut descodificar el VIN.';

  @override
  String get vinDecoderDialogVehicleModel => 'Model de vehicle';

  @override
  String get vinDecoderDialogModelYear => 'Any del model';

  @override
  String get vinDecoderDialogCountry => 'País de fabricació';

  @override
  String get vinDecoderDialogAssemblyPlant => 'Planta de muntatge';

  @override
  String get vinDecoderDialogManufacturer => 'Fabricant';

  @override
  String get vinDecoderDialogSequenceNumber => 'Número de seqüència';

  @override
  String get vinDecoderDialogWMI => 'WMI';

  @override
  String get vinDecoderDialogVDS => 'VDS';

  @override
  String get vinDecoderDialogVIS => 'VIS';

  @override
  String get vinDecoderDialogUnknown => 'Desconegut';

  @override
  String get vinInfoDialogTitle => 'Informació sobre el VIN (des de 1980)';

  @override
  String get vinInfoDialogContent =>
      'Identificació dels xassís de Volkswagen a partir de 1980\n\nEls models Volkswagen fabricats a partir de l\'1 d\'agost de 1979 (any de model 1980) van adoptar aquest nou format de xassís. Els dígits 1-3 són l\'identificador mundial del fabricant (WMI), els dígits 4-9 el descriptor del vehicle (VDS), i la resta és l\'identificador del cotxe en particular (VIS).\n\nEn la pràctica, es pot \"descodificar\" el número de la següent manera:\n\n**Dígit 1: Lloc de fabricació**\n  - S-Z: Europa\n  - 1-5: Amèrica del Nord\n\n**Dígit 2: Fabricant**\n  - V: Volkswagen\n\n**Dígit 3: Tipus de vehicle**\n  - W: Cotxes de passatgers VW\n  - 1: Vehicles comercials VW\n  - 2: Models tipus furgoneta VW\n\n**El VDS (Vehicle Descriptor Section)**\n\nA continuació, apareix el tipus de vehicle amb informació sobre la plataforma i la carrosseria. Els dígits 4, 5, 6 i 9 es consideren \"de farciment\" (sovint \"ZZZ\" per als cotxes venuts a Europa).\n\n**Dígits 7 i 8: Designació del tipus de model VW**\n  - Aquests dos dígits identifiquen la plataforma o model. Exemples:\n  - 17: Golf Mk1\n  - 19: Golf Mk2\n  - 7H: T5\n  - 70: Furgonetes i pick-ups T4\n  - 86: Primers Polo\n\n**Dígit 10: Any del model**\n  - Aquest dígit indica l\'any de producció, que va de l\'1 d\'agost al 31 de juliol.\n  - Comença amb \'A\' per a 1980, \'B\' per a 1981, i així successivament.\n  - Les lletres I, Q, U, Z i el número 0 no s\'utilitzen.\n  - El cicle es repeteix, de manera que \'A\' pot ser 1980 o 2010.\n\n**Dígit 11: Fàbrica de construcció**\n  - Indica la planta de fabricació del vehicle. Exemples:\n  - W: Wolfsburg (Alemanya)\n  - E: Emden (Alemanya)\n  - M: Puebla (Mèxic)\n  - V: Westmoreland (EUA) o Palmela (Portugal) (es desambigua amb el dígit 1).\n\n**Dígits 12-17: Número de sèrie exclusiu**\n  - Aquests últims sis dígits són el número de producció seqüencial del vehicle en aquella fàbrica i any, començant per 000001.';

  @override
  String get couldNotOpenLink => 'No s\'ha pogut obrir l\'enllaç';

  @override
  String get clearSearch => 'Netejar la cerca';

  @override
  String get languageTooltip => 'Canviar idioma';
}
