import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ca.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ca'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('pt')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Volkswagen Classics'**
  String get appTitle;

  /// No description provided for @chassisSearchDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Chassis Search'**
  String get chassisSearchDialogTitle;

  /// No description provided for @chassisSearchDialogInfoTooltip.
  ///
  /// In en, this message translates to:
  /// **'Information about the chassis'**
  String get chassisSearchDialogInfoTooltip;

  /// No description provided for @chassisSearchDialogSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter the chassis to find the model and manufacturing information.'**
  String get chassisSearchDialogSubtitle;

  /// No description provided for @chassisSearchDialogHint.
  ///
  /// In en, this message translates to:
  /// **'Enter Chassis'**
  String get chassisSearchDialogHint;

  /// No description provided for @chassisSearchDialogCloseButton.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get chassisSearchDialogCloseButton;

  /// No description provided for @chassisSearchDialogSearchButton.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get chassisSearchDialogSearchButton;

  /// No description provided for @vinInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'What is the chassis?'**
  String get vinInfoTitle;

  /// No description provided for @vinInfoContent.
  ///
  /// In en, this message translates to:
  /// **'The chassis, also known as VIN (Vehicle Identification Number) in more modern models, is a unique code that identifies each vehicle. In classic VW models, this number is crucial for determining the year, model, and original features of the car.'**
  String get vinInfoContent;

  /// No description provided for @vinInfoCloseButton.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get vinInfoCloseButton;

  /// No description provided for @aboutScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'About the app'**
  String get aboutScreenTitle;

  /// No description provided for @vinDecoderTooltip.
  ///
  /// In en, this message translates to:
  /// **'VIN Decoder'**
  String get vinDecoderTooltip;

  /// No description provided for @chassisSearchTooltip.
  ///
  /// In en, this message translates to:
  /// **'Search by chassis'**
  String get chassisSearchTooltip;

  /// No description provided for @filterByPlantTooltip.
  ///
  /// In en, this message translates to:
  /// **'Filter by plant'**
  String get filterByPlantTooltip;

  /// No description provided for @allPlants.
  ///
  /// In en, this message translates to:
  /// **'All plants'**
  String get allPlants;

  /// No description provided for @sortTooltip.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sortTooltip;

  /// No description provided for @sortByName.
  ///
  /// In en, this message translates to:
  /// **'Sort by name'**
  String get sortByName;

  /// No description provided for @sortByYear.
  ///
  /// In en, this message translates to:
  /// **'Sort by year'**
  String get sortByYear;

  /// No description provided for @sortByUnits.
  ///
  /// In en, this message translates to:
  /// **'Sort by units'**
  String get sortByUnits;

  /// No description provided for @defaultSort.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultSort;

  /// No description provided for @searchModelsHint.
  ///
  /// In en, this message translates to:
  /// **'Search models...'**
  String get searchModelsHint;

  /// No description provided for @activeFilter.
  ///
  /// In en, this message translates to:
  /// **'Active filter: {plantName}'**
  String activeFilter(Object plantName);

  /// No description provided for @noResultsFound.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get noResultsFound;

  /// No description provided for @technicalSheet.
  ///
  /// In en, this message translates to:
  /// **'Technical Sheet'**
  String get technicalSheet;

  /// No description provided for @designer.
  ///
  /// In en, this message translates to:
  /// **'Designer'**
  String get designer;

  /// No description provided for @unitsProduced.
  ///
  /// In en, this message translates to:
  /// **'Units produced'**
  String get unitsProduced;

  /// No description provided for @engine.
  ///
  /// In en, this message translates to:
  /// **'Engine'**
  String get engine;

  /// No description provided for @topSpeed.
  ///
  /// In en, this message translates to:
  /// **'Top speed'**
  String get topSpeed;

  /// No description provided for @manufacturingPlant.
  ///
  /// In en, this message translates to:
  /// **'Manufacturing plant'**
  String get manufacturingPlant;

  /// No description provided for @modelYearsAndChassis.
  ///
  /// In en, this message translates to:
  /// **'Model Years and Chassis'**
  String get modelYearsAndChassis;

  /// No description provided for @modelYear.
  ///
  /// In en, this message translates to:
  /// **'Model year: {year}'**
  String modelYear(Object year);

  /// No description provided for @relatedModels.
  ///
  /// In en, this message translates to:
  /// **'Related Models'**
  String get relatedModels;

  /// No description provided for @exportModelsToCsv.
  ///
  /// In en, this message translates to:
  /// **'Export Models to CSV'**
  String get exportModelsToCsv;

  /// No description provided for @credits.
  ///
  /// In en, this message translates to:
  /// **'Credits'**
  String get credits;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @errorLoadingInfo.
  ///
  /// In en, this message translates to:
  /// **'Error loading information.'**
  String get errorLoadingInfo;

  /// No description provided for @couldNotOpenUrl.
  ///
  /// In en, this message translates to:
  /// **'Could not open {url}'**
  String couldNotOpenUrl(Object url);

  /// No description provided for @csvDataMessage.
  ///
  /// In en, this message translates to:
  /// **'Here is the model data in CSV format.'**
  String get csvDataMessage;

  /// No description provided for @errorExportingData.
  ///
  /// In en, this message translates to:
  /// **'Error exporting data: {error}'**
  String errorExportingData(Object error);

  /// No description provided for @chassisSearchDialogModel.
  ///
  /// In en, this message translates to:
  /// **'Model'**
  String get chassisSearchDialogModel;

  /// No description provided for @vinDecoderDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'VIN Decoder'**
  String get vinDecoderDialogTitle;

  /// No description provided for @vinDecoderDialogInfoTooltip.
  ///
  /// In en, this message translates to:
  /// **'Information about the VIN'**
  String get vinDecoderDialogInfoTooltip;

  /// No description provided for @vinDecoderDialogSubtitle.
  ///
  /// In en, this message translates to:
  /// **'For vehicles manufactured in the period 1980-2009 (17 digits).'**
  String get vinDecoderDialogSubtitle;

  /// No description provided for @vinDecoderDialogHint.
  ///
  /// In en, this message translates to:
  /// **'Enter the VIN'**
  String get vinDecoderDialogHint;

  /// No description provided for @vinDecoderDialogDecodeButton.
  ///
  /// In en, this message translates to:
  /// **'Decode'**
  String get vinDecoderDialogDecodeButton;

  /// No description provided for @vinDecoderDialogCloseButton.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get vinDecoderDialogCloseButton;

  /// No description provided for @vinDecoderDialogError17Chars.
  ///
  /// In en, this message translates to:
  /// **'The VIN must have 17 characters.'**
  String get vinDecoderDialogError17Chars;

  /// No description provided for @vinDecoderDialogErrorDecoding.
  ///
  /// In en, this message translates to:
  /// **'Could not decode the VIN.'**
  String get vinDecoderDialogErrorDecoding;

  /// No description provided for @vinDecoderDialogVehicleModel.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Model'**
  String get vinDecoderDialogVehicleModel;

  /// No description provided for @vinDecoderDialogModelYear.
  ///
  /// In en, this message translates to:
  /// **'Model Year'**
  String get vinDecoderDialogModelYear;

  /// No description provided for @vinDecoderDialogCountry.
  ///
  /// In en, this message translates to:
  /// **'Country of manufacture'**
  String get vinDecoderDialogCountry;

  /// No description provided for @vinDecoderDialogAssemblyPlant.
  ///
  /// In en, this message translates to:
  /// **'Assembly plant'**
  String get vinDecoderDialogAssemblyPlant;

  /// No description provided for @vinDecoderDialogManufacturer.
  ///
  /// In en, this message translates to:
  /// **'Manufacturer'**
  String get vinDecoderDialogManufacturer;

  /// No description provided for @vinDecoderDialogSequenceNumber.
  ///
  /// In en, this message translates to:
  /// **'Sequence number'**
  String get vinDecoderDialogSequenceNumber;

  /// No description provided for @vinDecoderDialogWMI.
  ///
  /// In en, this message translates to:
  /// **'WMI'**
  String get vinDecoderDialogWMI;

  /// No description provided for @vinDecoderDialogVDS.
  ///
  /// In en, this message translates to:
  /// **'VDS'**
  String get vinDecoderDialogVDS;

  /// No description provided for @vinDecoderDialogVIS.
  ///
  /// In en, this message translates to:
  /// **'VIS'**
  String get vinDecoderDialogVIS;

  /// No description provided for @vinDecoderDialogUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get vinDecoderDialogUnknown;

  /// No description provided for @vinInfoDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Information about the VIN (from 1980)'**
  String get vinInfoDialogTitle;

  /// No description provided for @vinInfoDialogContent.
  ///
  /// In en, this message translates to:
  /// **'Identification of Volkswagen chassis from 1980\n\nVolkswagen models manufactured from August 1, 1979 (model year 1980) adopted this new chassis format. Digits 1-3 are the World Manufacturer Identifier (WMI), digits 4-9 are the Vehicle Descriptor Section (VDS), and the rest is the Vehicle Identifier Section (VIS).\n\nIn practice, the number can be \"decoded\" as follows:\n\n**Digit 1: Place of manufacture**\n  - S-Z: Europe\n  - 1-5: North America\n\n**Digit 2: Manufacturer**\n  - V: Volkswagen\n\n**Digit 3: Vehicle type**\n  - W: VW passenger cars\n  - 1: VW commercial vehicles\n  - 2: VW van-type models\n\n**The VDS (Vehicle Descriptor Section)**\n\nNext, the vehicle type appears with information about the platform and bodywork. Digits 4, 5, 6, and 9 are considered \"fillers\" (often \"ZZZ\" for cars sold in Europe).\n\n**Digits 7 and 8: VW model type designation**\n  - These two digits identify the platform or model. Examples:\n  - 17: Golf Mk1\n  - 19: Golf Mk2\n  - 7H: T5\n  - 70: T4 vans and pickups\n  - 86: Early Polo\n\n**Digit 10: Model year**\n  - This digit indicates the year of production, which runs from August 1 to July 31.\n  - It starts with \'A\' for 1980, \'B\' for 1981, and so on.\n  - The letters I, Q, U, Z, and the number 0 are not used.\n  - The cycle repeats, so \'A\' can be 1980 or 2010.\n\n**Digit 11: Manufacturing plant**\n  - Indicates the vehicle\'s manufacturing plant. Examples:\n  - W: Wolfsburg (Germany)\n  - E: Emden (Germany)\n  - M: Puebla (Mexico)\n  - V: Westmoreland (USA) or Palmela (Portugal) (disambiguated by digit 1).\n\n**Digits 12-17: Unique serial number**\n  - These last six digits are the sequential production number of the vehicle in that factory and year, starting from 000001.'**
  String get vinInfoDialogContent;

  /// No description provided for @couldNotOpenLink.
  ///
  /// In en, this message translates to:
  /// **'Could not open the link'**
  String get couldNotOpenLink;

  /// No description provided for @clearSearch.
  ///
  /// In en, this message translates to:
  /// **'Clear search'**
  String get clearSearch;

  /// No description provided for @languageTooltip.
  ///
  /// In en, this message translates to:
  /// **'Change language'**
  String get languageTooltip;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ca',
        'de',
        'en',
        'es',
        'fr',
        'pt'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ca':
      return AppLocalizationsCa();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
