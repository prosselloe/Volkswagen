// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Volkswagen Classics';

  @override
  String get chassisSearchDialogTitle => 'Recherche par Châssis';

  @override
  String get chassisSearchDialogInfoTooltip => 'Informations sur le châssis';

  @override
  String get chassisSearchDialogSubtitle =>
      'Entrez le châssis pour trouver le modèle et les informations de fabrication.';

  @override
  String get chassisSearchDialogHint => 'Entrez le Châssis';

  @override
  String get chassisSearchDialogCloseButton => 'Fermer';

  @override
  String get chassisSearchDialogSearchButton => 'Rechercher';

  @override
  String get vinInfoTitle => 'Qu\'est-ce que le châssis ?';

  @override
  String get vinInfoContent =>
      'Le châssis, également connu sous le nom de VIN (Vehicle Identification Number) dans les modèles plus modernes, est un code unique qui identifie chaque véhicule. Dans les modèles VW classiques, ce numéro est crucial pour déterminer l\'année, le modèle et les caractéristiques d\'origine de la voiture.';

  @override
  String get vinInfoCloseButton => 'Fermer';

  @override
  String get aboutScreenTitle => 'À propos de l\'application';

  @override
  String get vinDecoderTooltip => 'Décodeur VIN';

  @override
  String get chassisSearchTooltip => 'Recherche par châssis';

  @override
  String get filterByPlantTooltip => 'Filtrer par usine';

  @override
  String get allPlants => 'Toutes les usines';

  @override
  String get sortTooltip => 'Trier';

  @override
  String get sortByName => 'Trier par nom';

  @override
  String get sortByYear => 'Trier par année';

  @override
  String get sortByUnits => 'Trier par unités';

  @override
  String get defaultSort => 'Par défaut';

  @override
  String get searchModelsHint => 'Rechercher des modèles...';

  @override
  String activeFilter(Object plantName) {
    return 'Filtre actif : $plantName';
  }

  @override
  String get noResultsFound => 'Aucun résultat trouvé';

  @override
  String get technicalSheet => 'Fiche technique';

  @override
  String get designer => 'Concepteur';

  @override
  String get unitsProduced => 'Unités produites';

  @override
  String get engine => 'Moteur';

  @override
  String get topSpeed => 'Vitesse maximale';

  @override
  String get manufacturingPlant => 'Usine de fabrication';

  @override
  String get modelYearsAndChassis => 'Années modèles et châssis';

  @override
  String modelYear(Object year) {
    return 'Année modèle : $year';
  }

  @override
  String get relatedModels => 'Modèles similaires';

  @override
  String get exportModelsToCsv => 'Exporter les modèles au format CSV';

  @override
  String get credits => 'Crédits';

  @override
  String get loading => 'Chargement...';

  @override
  String get errorLoadingInfo => 'Erreur lors du chargement des informations.';

  @override
  String couldNotOpenUrl(Object url) {
    return 'Impossible d\'ouvrir $url';
  }

  @override
  String get csvDataMessage => 'Voici les données du modèle au format CSV.';

  @override
  String errorExportingData(Object error) {
    return 'Erreur lors de l\'exportation des données : $error';
  }

  @override
  String get chassisSearchDialogModel => 'Modèle';

  @override
  String get vinDecoderDialogTitle => 'Décodeur VIN';

  @override
  String get vinDecoderDialogInfoTooltip => 'Informations sur le VIN';

  @override
  String get vinDecoderDialogSubtitle =>
      'Pour les véhicules fabriqués entre 1980 et 2009 (17 chiffres).';

  @override
  String get vinDecoderDialogHint => 'Entrez le VIN';

  @override
  String get vinDecoderDialogDecodeButton => 'Décoder';

  @override
  String get vinDecoderDialogCloseButton => 'Fermer';

  @override
  String get vinDecoderDialogError17Chars =>
      'Le VIN doit comporter 17 caractères.';

  @override
  String get vinDecoderDialogErrorDecoding => 'Impossible de décoder le VIN.';

  @override
  String get vinDecoderDialogVehicleModel => 'Modèle de véhicule';

  @override
  String get vinDecoderDialogModelYear => 'Année modèle';

  @override
  String get vinDecoderDialogCountry => 'Pays de fabrication';

  @override
  String get vinDecoderDialogAssemblyPlant => 'Usine d\'assemblage';

  @override
  String get vinDecoderDialogManufacturer => 'Fabricant';

  @override
  String get vinDecoderDialogSequenceNumber => 'Numéro de séquence';

  @override
  String get vinDecoderDialogWMI => 'WMI';

  @override
  String get vinDecoderDialogVDS => 'VDS';

  @override
  String get vinDecoderDialogVIS => 'VIS';

  @override
  String get vinDecoderDialogUnknown => 'Inconnu';

  @override
  String get vinInfoDialogTitle => 'Informations sur le VIN (à partir de 1980)';

  @override
  String get vinInfoDialogContent =>
      'Identification des châssis Volkswagen à partir de 1980\n\nLes modèles Volkswagen fabriqués à partir du 1er août 1979 (année modèle 1980) ont adopté ce nouveau format de châssis. Les chiffres 1 à 3 correspondent à l\'identifiant mondial du constructeur (WMI), les chiffres 4 à 9 à la section de description du véhicule (VDS) et le reste à la section d\'identification du véhicule (VIS).\n\nEn pratique, le numéro peut être \"décodé\" comme suit :\n\n**Chiffre 1 : Lieu de fabrication**\n  - S-Z : Europe\n  - 1-5 : Amérique du Nord\n\n**Chiffre 2 : Fabricant**\n  - V : Volkswagen\n\n**Chiffre 3 : Type de véhicule**\n  - W : Voitures de tourisme VW\n  - 1 : Véhicules utilitaires VW\n  - 2 : Modèles de type fourgonnette VW\n\n**La VDS (Section de description du véhicule)**\n\nEnsuite, le type de véhicule apparaît avec des informations sur la plate-forme et la carrosserie. Les chiffres 4, 5, 6 et 9 sont considérés comme des \"remplissages\" (souvent \"ZZZ\" pour les voitures vendues en Europe).\n\n**Chiffres 7 et 8 : Désignation du type de modèle VW**\n  - Ces deux chiffres identifient la plate-forme ou le modèle. Exemples :\n  - 17 : Golf Mk1\n  - 19 : Golf Mk2\n  - 7H : T5\n  - 70 : Fourgonnettes et camionnettes T4\n  - 86 : Première Polo\n\n**Chiffre 10 : Année modèle**\n  - Ce chiffre indique l\'année de production, qui s\'étend du 1er août au 31 juillet.\n  - Il commence par \'A\' pour 1980, \'B\' pour 1981, et ainsi de suite.\n  - Les lettres I, Q, U, Z et le chiffre 0 ne sont pas utilisés.\n  - Le cycle se répète, donc \'A\' peut être 1980 ou 2010.\n\n**Chiffre 11 : Usine de fabrication**\n  - Indique l\'usine de fabrication du véhicule. Exemples :\n  - W : Wolfsburg (Allemagne)\n  - E : Emden (Allemagne)\n  - M : Puebla (Mexique)\n  - V : Westmoreland (États-Unis) ou Palmela (Portugal) (désambiguïsé par le chiffre 1).\n\n**Chiffres 12-17 : Numéro de série unique**\n  - Ces six derniers chiffres correspondent au numéro de production séquentiel du véhicule dans cette usine et cette année-là, à partir de 000001.';

  @override
  String get couldNotOpenLink => 'Impossible d\'ouvrir le lien';

  @override
  String get clearSearch => 'Effacer la recherche';

  @override
  String get languageTooltip => 'Changer de langue';
}
