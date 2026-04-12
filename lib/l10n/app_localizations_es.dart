// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Volkswagen Classics';

  @override
  String get chassisSearchDialogTitle => 'Búsqueda por Chasis';

  @override
  String get chassisSearchDialogInfoTooltip => 'Información sobre el chasis';

  @override
  String get chassisSearchDialogSubtitle =>
      'Introduzca el chasis para encontrar el modelo y la información de fabricación.';

  @override
  String get chassisSearchDialogHint => 'Introduzca el Chasis';

  @override
  String get chassisSearchDialogCloseButton => 'Cerrar';

  @override
  String get chassisSearchDialogSearchButton => 'Buscar';

  @override
  String get vinInfoTitle => '¿Qué es el chasis?';

  @override
  String get vinInfoContent =>
      'El chasis, también conocido como VIN (Vehicle Identification Number) en modelos más modernos, es un código único que identifica cada vehículo. En los modelos clásicos de VW, este número es crucial para determinar el año, el modelo y las características originales del coche.';

  @override
  String get vinInfoCloseButton => 'Cerrar';

  @override
  String get aboutScreenTitle => 'Acerca de la aplicación';

  @override
  String get vinDecoderTooltip => 'Decodificador de VIN';

  @override
  String get chassisSearchTooltip => 'Buscar por chasis';

  @override
  String get filterByPlantTooltip => 'Filtrar por planta';

  @override
  String get allPlants => 'Todas las plantas';

  @override
  String get sortTooltip => 'Ordenar';

  @override
  String get sortByName => 'Ordenar por nombre';

  @override
  String get sortByYear => 'Ordenar por año';

  @override
  String get sortByUnits => 'Ordenar por unidades';

  @override
  String get defaultSort => 'Por defecto';

  @override
  String get searchModelsHint => 'Buscar modelos...';

  @override
  String activeFilter(Object plantName) {
    return 'Filtro activo: $plantName';
  }

  @override
  String get noResultsFound => 'No se han encontrado resultados';

  @override
  String get technicalSheet => 'Ficha técnica';

  @override
  String get designer => 'Diseñador';

  @override
  String get unitsProduced => 'Unidades producidas';

  @override
  String get engine => 'Motor';

  @override
  String get topSpeed => 'Velocidad máxima';

  @override
  String get manufacturingPlant => 'Planta de fabricación';

  @override
  String get modelYearsAndChassis => 'Años de modelo y chasis';

  @override
  String modelYear(Object year) {
    return 'Año modelo: $year';
  }

  @override
  String get relatedModels => 'Modelos relacionados';

  @override
  String get exportModelsToCsv => 'Exportar Modelos a CSV';

  @override
  String get credits => 'Créditos';

  @override
  String get loading => 'Cargando...';

  @override
  String get errorLoadingInfo => 'Error al cargar la información.';

  @override
  String couldNotOpenUrl(Object url) {
    return 'No se ha podido abrir $url';
  }

  @override
  String get csvDataMessage =>
      'Aquí tienes los datos de los modelos en formato CSV.';

  @override
  String errorExportingData(Object error) {
    return 'Error al exportar los datos: $error';
  }

  @override
  String get chassisSearchDialogModel => 'Modelo';

  @override
  String get vinDecoderDialogTitle => 'Decodificador de VIN';

  @override
  String get vinDecoderDialogInfoTooltip => 'Información sobre el VIN';

  @override
  String get vinDecoderDialogSubtitle =>
      'Para vehículos fabricados en el período 1980-2009 (17 dígitos).';

  @override
  String get vinDecoderDialogHint => 'Introduzca el VIN';

  @override
  String get vinDecoderDialogDecodeButton => 'Decodificar';

  @override
  String get vinDecoderDialogCloseButton => 'Cerrar';

  @override
  String get vinDecoderDialogError17Chars => 'El VIN debe tener 17 caracteres.';

  @override
  String get vinDecoderDialogErrorDecoding =>
      'No se ha podido decodificar el VIN.';

  @override
  String get vinDecoderDialogVehicleModel => 'Modelo de vehículo';

  @override
  String get vinDecoderDialogModelYear => 'Año del modelo';

  @override
  String get vinDecoderDialogCountry => 'País de fabricación';

  @override
  String get vinDecoderDialogAssemblyPlant => 'Planta de montaje';

  @override
  String get vinDecoderDialogManufacturer => 'Fabricante';

  @override
  String get vinDecoderDialogSequenceNumber => 'Número de secuencia';

  @override
  String get vinDecoderDialogWMI => 'WMI';

  @override
  String get vinDecoderDialogVDS => 'VDS';

  @override
  String get vinDecoderDialogVIS => 'VIS';

  @override
  String get vinDecoderDialogUnknown => 'Desconocido';

  @override
  String get vinInfoDialogTitle => 'Información sobre el VIN (desde 1980)';

  @override
  String get vinInfoDialogContent =>
      'Identificación de los chasis de Volkswagen a partir de 1980\n\nLos modelos de Volkswagen fabricados a partir del 1 de agosto de 1979 (año de modelo 1980) adoptaron este nuevo formato de chasis. Los dígitos 1-3 son el Identificador Mundial del Fabricante (WMI), los dígitos 4-9 son la Sección de Descripción del Vehículo (VDS) y el resto es la Sección de Identificación del Vehículo (VIS).\n\nEn la práctica, el número se puede \"decodificar\" de la siguiente manera:\n\n**Dígito 1: Lugar de fabricación**\n  - S-Z: Europa\n  - 1-5: América del Norte\n\n**Dígito 2: Fabricante**\n  - V: Volkswagen\n\n**Dígito 3: Tipo de vehículo**\n  - W: Automóviles de pasajeros VW\n  - 1: Vehículos comerciales VW\n  - 2: Modelos tipo furgoneta VW\n\n**El VDS (Sección de Descripción del Vehículo)**\n\nA continuación, aparece el tipo de vehículo con información sobre la plataforma y la carrocería. Los dígitos 4, 5, 6 y 9 se consideran \"de relleno\" (a menudo \"ZZZ\" para los coches vendidos en Europa).\n\n**Dígitos 7 y 8: Designación del tipo de modelo de VW**\n  - Estos dos dígitos identifican la plataforma o el modelo. Ejemplos:\n  - 17: Golf Mk1\n  - 19: Golf Mk2\n  - 7H: T5\n  - 70: Furgonetas y camionetas T4\n  - 86: Polo antiguo\n\n**Dígito 10: Año del modelo**\n  - Este dígito indica el año de producción, que va del 1 de agosto al 31 de julio.\n  - Comienza con \'A\' para 1980, \'B\' para 1981, y así sucesivamente.\n  - No se utilizan las letras I, Q, U, Z ni el número 0.\n  - El ciclo se repite, por lo que \'A\' puede ser 1980 o 2010.\n\n**Dígito 11: Planta de fabricación**\n  - Indica la planta de fabricación del vehículo. Ejemplos:\n  - W: Wolfsburg (Alemania)\n  - E: Emden (Alemania)\n  - M: Puebla (México)\n  - V: Westmoreland (EE. UU.) o Palmela (Portugal) (se desambigua con el dígito 1).\n\n**Dígitos 12-17: Número de serie único**\n  - Estos últimos seis dígitos son el número de producción secuencial del vehículo en esa fábrica y año, comenzando por 000001.';

  @override
  String get couldNotOpenLink => 'No se pudo abrir el enlace';

  @override
  String get clearSearch => 'Limpiar búsqueda';

  @override
  String get languageTooltip => 'Cambiar idioma';
}
