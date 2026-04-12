// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Volkswagen Classics';

  @override
  String get chassisSearchDialogTitle => 'Fahrgestellsuche';

  @override
  String get chassisSearchDialogInfoTooltip => 'Informationen zum Fahrgestell';

  @override
  String get chassisSearchDialogSubtitle =>
      'Geben Sie das Fahrgestell ein, um das Modell und die Herstellungsinformationen zu finden.';

  @override
  String get chassisSearchDialogHint => 'Fahrgestell eingeben';

  @override
  String get chassisSearchDialogCloseButton => 'Schließen';

  @override
  String get chassisSearchDialogSearchButton => 'Suchen';

  @override
  String get vinInfoTitle => 'Was ist das Fahrgestell?';

  @override
  String get vinInfoContent =>
      'Das Fahrgestell, bei neueren Modellen auch als VIN (Vehicle Identification Number) bekannt, ist ein einzigartiger Code, der jedes Fahrzeug identifiziert. Bei klassischen VW-Modellen ist diese Nummer entscheidend für die Bestimmung von Baujahr, Modell und Originalausstattung des Autos.';

  @override
  String get vinInfoCloseButton => 'Schließen';

  @override
  String get aboutScreenTitle => 'Über die App';

  @override
  String get vinDecoderTooltip => 'VIN-Decoder';

  @override
  String get chassisSearchTooltip => 'Suche nach Fahrgestell';

  @override
  String get filterByPlantTooltip => 'Nach Werk filtern';

  @override
  String get allPlants => 'Alle Werke';

  @override
  String get sortTooltip => 'Sortieren';

  @override
  String get sortByName => 'Nach Name sortieren';

  @override
  String get sortByYear => 'Nach Jahr sortieren';

  @override
  String get sortByUnits => 'Nach Einheiten sortieren';

  @override
  String get defaultSort => 'Standard';

  @override
  String get searchModelsHint => 'Modelle suchen...';

  @override
  String activeFilter(Object plantName) {
    return 'Aktiver Filter: $plantName';
  }

  @override
  String get noResultsFound => 'Keine Ergebnisse gefunden';

  @override
  String get technicalSheet => 'Technisches Datenblatt';

  @override
  String get designer => 'Designer';

  @override
  String get unitsProduced => 'Produzierte Einheiten';

  @override
  String get engine => 'Motor';

  @override
  String get topSpeed => 'Höchstgeschwindigkeit';

  @override
  String get manufacturingPlant => 'Herstellungswerk';

  @override
  String get modelYearsAndChassis => 'Modelljahre und Fahrgestell';

  @override
  String modelYear(Object year) {
    return 'Modelljahr: $year';
  }

  @override
  String get relatedModels => 'Ähnliche Modelle';

  @override
  String get exportModelsToCsv => 'Modelle in CSV exportieren';

  @override
  String get credits => 'Credits';

  @override
  String get loading => 'Wird geladen...';

  @override
  String get errorLoadingInfo => 'Fehler beim Laden der Informationen.';

  @override
  String couldNotOpenUrl(Object url) {
    return '$url konnte nicht geöffnet werden';
  }

  @override
  String get csvDataMessage => 'Hier sind die Modelldaten im CSV-Format.';

  @override
  String errorExportingData(Object error) {
    return 'Fehler beim Exportieren der Daten: $error';
  }

  @override
  String get chassisSearchDialogModel => 'Modell';

  @override
  String get vinDecoderDialogTitle => 'VIN-Decoder';

  @override
  String get vinDecoderDialogInfoTooltip => 'Informationen zum VIN';

  @override
  String get vinDecoderDialogSubtitle =>
      'Für Fahrzeuge, die im Zeitraum 1980-2009 hergestellt wurden (17 Ziffern).';

  @override
  String get vinDecoderDialogHint => 'Geben Sie die VIN ein';

  @override
  String get vinDecoderDialogDecodeButton => 'Dekodieren';

  @override
  String get vinDecoderDialogCloseButton => 'Schließen';

  @override
  String get vinDecoderDialogError17Chars =>
      'Die VIN muss 17 Zeichen lang sein.';

  @override
  String get vinDecoderDialogErrorDecoding =>
      'Die VIN konnte nicht dekodiert werden.';

  @override
  String get vinDecoderDialogVehicleModel => 'Fahrzeugmodell';

  @override
  String get vinDecoderDialogModelYear => 'Modelljahr';

  @override
  String get vinDecoderDialogCountry => 'Herstellungsland';

  @override
  String get vinDecoderDialogAssemblyPlant => 'Montagewerk';

  @override
  String get vinDecoderDialogManufacturer => 'Hersteller';

  @override
  String get vinDecoderDialogSequenceNumber => 'Sequenznummer';

  @override
  String get vinDecoderDialogWMI => 'WMI';

  @override
  String get vinDecoderDialogVDS => 'VDS';

  @override
  String get vinDecoderDialogVIS => 'VIS';

  @override
  String get vinDecoderDialogUnknown => 'Unbekannt';

  @override
  String get vinInfoDialogTitle => 'Informationen zum VIN (ab 1980)';

  @override
  String get vinInfoDialogContent =>
      'Identifizierung von Volkswagen-Fahrgestellen ab 1980\n\nVolkswagen-Modelle, die ab dem 1. August 1979 (Modelljahr 1980) hergestellt wurden, übernahmen dieses neue Fahrgestellformat. Die Ziffern 1-3 sind der Weltherstellercode (WMI), die Ziffern 4-9 der Fahrzeugbeschreibungsabschnitt (VDS) und der Rest ist der Fahrzeugidentifizierungsabschnitt (VIS).\n\nIn der Praxis kann die Nummer wie folgt \"dekodiert\" werden:\n\n**Ziffer 1: Herstellungsort**\n  - S-Z: Europa\n  - 1-5: Nordamerika\n\n**Ziffer 2: Hersteller**\n  - V: Volkswagen\n\n**Ziffer 3: Fahrzeugtyp**\n  - W: VW-Pkw\n  - 1: VW-Nutzfahrzeuge\n  - 2: VW-Transportermodelle\n\n**Der VDS (Vehicle Descriptor Section)**\n\nAls Nächstes erscheint der Fahrzeugtyp mit Informationen zur Plattform und Karosserie. Die Ziffern 4, 5, 6 und 9 gelten als \"Füllzeichen\" (oft \"ZZZ\" für in Europa verkaufte Autos).\n\n**Ziffern 7 und 8: VW-Modelltypbezeichnung**\n  - Diese beiden Ziffern identifizieren die Plattform oder das Modell. Beispiele:\n  - 17: Golf Mk1\n  - 19: Golf Mk2\n  - 7H: T5\n  - 70: T4-Transporter und -Pick-ups\n  - 86: Früher Polo\n\n**Ziffer 10: Modelljahr**\n  - Diese Ziffer gibt das Produktionsjahr an, das vom 1. August bis zum 31. Juli läuft.\n  - Es beginnt mit \'A\' für 1980, \'B\' für 1981 und so weiter.\n  - Die Buchstaben I, Q, U, Z und die Zahl 0 werden nicht verwendet.\n  - Der Zyklus wiederholt sich, sodass \'A\' 1980 oder 2010 sein kann.\n\n**Ziffer 11: Herstellungsfabrik**\n  - Gibt das Werk an, in dem das Fahrzeug hergestellt wurde. Beispiele:\n  - W: Wolfsburg (Deutschland)\n  - E: Emden (Deutschland)\n  - M: Puebla (Mexiko)\n  - V: Westmoreland (USA) oder Palmela (Portugal) (wird durch Ziffer 1 unterschieden).\n\n**Ziffern 12-17: Eindeutige Seriennummer**\n  - Diese letzten sechs Ziffern sind die fortlaufende Produktionsnummer des Fahrzeugs in dieser Fabrik und diesem Jahr, beginnend mit 000001.';

  @override
  String get couldNotOpenLink => 'Der Link konnte nicht geöffnet werden';

  @override
  String get clearSearch => 'Suche löschen';

  @override
  String get languageTooltip => 'Sprache ändern';
}
