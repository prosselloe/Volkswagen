// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Volkswagen Classics';

  @override
  String get chassisSearchDialogTitle => 'Chassis Search';

  @override
  String get chassisSearchDialogInfoTooltip => 'Information about the chassis';

  @override
  String get chassisSearchDialogSubtitle =>
      'Enter the chassis to find the model and manufacturing information.';

  @override
  String get chassisSearchDialogHint => 'Enter Chassis';

  @override
  String get chassisSearchDialogCloseButton => 'Close';

  @override
  String get chassisSearchDialogSearchButton => 'Search';

  @override
  String get vinInfoTitle => 'What is the chassis?';

  @override
  String get vinInfoContent =>
      'The chassis, also known as VIN (Vehicle Identification Number) in more modern models, is a unique code that identifies each vehicle. In classic VW models, this number is crucial for determining the year, model, and original features of the car.';

  @override
  String get vinInfoCloseButton => 'Close';

  @override
  String get aboutScreenTitle => 'About the app';

  @override
  String get vinDecoderTooltip => 'VIN Decoder';

  @override
  String get chassisSearchTooltip => 'Search by chassis';

  @override
  String get filterByPlantTooltip => 'Filter by plant';

  @override
  String get allPlants => 'All plants';

  @override
  String get sortTooltip => 'Sort';

  @override
  String get sortByName => 'Sort by name';

  @override
  String get sortByYear => 'Sort by year';

  @override
  String get sortByUnits => 'Sort by units';

  @override
  String get defaultSort => 'Default';

  @override
  String get searchModelsHint => 'Search models...';

  @override
  String activeFilter(Object plantName) {
    return 'Active filter: $plantName';
  }

  @override
  String get noResultsFound => 'No results found';

  @override
  String get technicalSheet => 'Technical Sheet';

  @override
  String get designer => 'Designer';

  @override
  String get unitsProduced => 'Units produced';

  @override
  String get engine => 'Engine';

  @override
  String get topSpeed => 'Top speed';

  @override
  String get manufacturingPlant => 'Manufacturing plant';

  @override
  String get modelYearsAndChassis => 'Model Years and Chassis';

  @override
  String modelYear(Object year) {
    return 'Model year: $year';
  }

  @override
  String get relatedModels => 'Related Models';

  @override
  String get exportModelsToCsv => 'Export Models to CSV';

  @override
  String get credits => 'Credits';

  @override
  String get loading => 'Loading...';

  @override
  String get errorLoadingInfo => 'Error loading information.';

  @override
  String couldNotOpenUrl(Object url) {
    return 'Could not open $url';
  }

  @override
  String get csvDataMessage => 'Here is the model data in CSV format.';

  @override
  String errorExportingData(Object error) {
    return 'Error exporting data: $error';
  }

  @override
  String get chassisSearchDialogModel => 'Model';

  @override
  String get vinDecoderDialogTitle => 'VIN Decoder';

  @override
  String get vinDecoderDialogInfoTooltip => 'Information about the VIN';

  @override
  String get vinDecoderDialogSubtitle =>
      'For vehicles manufactured in the period 1980-2009 (17 digits).';

  @override
  String get vinDecoderDialogHint => 'Enter the VIN';

  @override
  String get vinDecoderDialogDecodeButton => 'Decode';

  @override
  String get vinDecoderDialogCloseButton => 'Close';

  @override
  String get vinDecoderDialogError17Chars => 'The VIN must have 17 characters.';

  @override
  String get vinDecoderDialogErrorDecoding => 'Could not decode the VIN.';

  @override
  String get vinDecoderDialogVehicleModel => 'Vehicle Model';

  @override
  String get vinDecoderDialogModelYear => 'Model Year';

  @override
  String get vinDecoderDialogCountry => 'Country of manufacture';

  @override
  String get vinDecoderDialogAssemblyPlant => 'Assembly plant';

  @override
  String get vinDecoderDialogManufacturer => 'Manufacturer';

  @override
  String get vinDecoderDialogSequenceNumber => 'Sequence number';

  @override
  String get vinDecoderDialogWMI => 'WMI';

  @override
  String get vinDecoderDialogVDS => 'VDS';

  @override
  String get vinDecoderDialogVIS => 'VIS';

  @override
  String get vinDecoderDialogUnknown => 'Unknown';

  @override
  String get vinInfoDialogTitle => 'Information about the VIN (from 1980)';

  @override
  String get vinInfoDialogContent =>
      'Identification of Volkswagen chassis from 1980\n\nVolkswagen models manufactured from August 1, 1979 (model year 1980) adopted this new chassis format. Digits 1-3 are the World Manufacturer Identifier (WMI), digits 4-9 are the Vehicle Descriptor Section (VDS), and the rest is the Vehicle Identifier Section (VIS).\n\nIn practice, the number can be \"decoded\" as follows:\n\n**Digit 1: Place of manufacture**\n  - S-Z: Europe\n  - 1-5: North America\n\n**Digit 2: Manufacturer**\n  - V: Volkswagen\n\n**Digit 3: Vehicle type**\n  - W: VW passenger cars\n  - 1: VW commercial vehicles\n  - 2: VW van-type models\n\n**The VDS (Vehicle Descriptor Section)**\n\nNext, the vehicle type appears with information about the platform and bodywork. Digits 4, 5, 6, and 9 are considered \"fillers\" (often \"ZZZ\" for cars sold in Europe).\n\n**Digits 7 and 8: VW model type designation**\n  - These two digits identify the platform or model. Examples:\n  - 17: Golf Mk1\n  - 19: Golf Mk2\n  - 7H: T5\n  - 70: T4 vans and pickups\n  - 86: Early Polo\n\n**Digit 10: Model year**\n  - This digit indicates the year of production, which runs from August 1 to July 31.\n  - It starts with \'A\' for 1980, \'B\' for 1981, and so on.\n  - The letters I, Q, U, Z, and the number 0 are not used.\n  - The cycle repeats, so \'A\' can be 1980 or 2010.\n\n**Digit 11: Manufacturing plant**\n  - Indicates the vehicle\'s manufacturing plant. Examples:\n  - W: Wolfsburg (Germany)\n  - E: Emden (Germany)\n  - M: Puebla (Mexico)\n  - V: Westmoreland (USA) or Palmela (Portugal) (disambiguated by digit 1).\n\n**Digits 12-17: Unique serial number**\n  - These last six digits are the sequential production number of the vehicle in that factory and year, starting from 000001.';

  @override
  String get couldNotOpenLink => 'Could not open the link';

  @override
  String get clearSearch => 'Clear search';

  @override
  String get languageTooltip => 'Change language';
}
