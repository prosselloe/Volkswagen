// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Volkswagen Classics';

  @override
  String get chassisSearchDialogTitle => 'Pesquisa por Chassi';

  @override
  String get chassisSearchDialogInfoTooltip => 'Informações sobre o chassi';

  @override
  String get chassisSearchDialogSubtitle =>
      'Digite o chassi para encontrar o modelo e as informações de fabricação.';

  @override
  String get chassisSearchDialogHint => 'Digite o Chassi';

  @override
  String get chassisSearchDialogCloseButton => 'Fechar';

  @override
  String get chassisSearchDialogSearchButton => 'Pesquisar';

  @override
  String get vinInfoTitle => 'O que é o chassi?';

  @override
  String get vinInfoContent =>
      'O chassi, também conhecido como VIN (Vehicle Identification Number) em modelos mais modernos, é um código único que identifica cada veículo. Nos modelos clássicos da VW, esse número é crucial para determinar o ano, o modelo e as características originais do carro.';

  @override
  String get vinInfoCloseButton => 'Fechar';

  @override
  String get aboutScreenTitle => 'Sobre o aplicativo';

  @override
  String get vinDecoderTooltip => 'Decodificador de VIN';

  @override
  String get chassisSearchTooltip => 'Pesquisar por chassi';

  @override
  String get filterByPlantTooltip => 'Filtrar por fábrica';

  @override
  String get allPlants => 'Todas as fábricas';

  @override
  String get sortTooltip => 'Ordenar';

  @override
  String get sortByName => 'Ordenar por nome';

  @override
  String get sortByYear => 'Ordenar por ano';

  @override
  String get sortByUnits => 'Ordenar por unidades';

  @override
  String get defaultSort => 'Padrão';

  @override
  String get searchModelsHint => 'Pesquisar modelos...';

  @override
  String activeFilter(Object plantName) {
    return 'Filtro ativo: $plantName';
  }

  @override
  String get noResultsFound => 'Nenhum resultado encontrado';

  @override
  String get technicalSheet => 'Ficha técnica';

  @override
  String get designer => 'Designer';

  @override
  String get unitsProduced => 'Unidades produzidas';

  @override
  String get engine => 'Motor';

  @override
  String get topSpeed => 'Velocidade máxima';

  @override
  String get manufacturingPlant => 'Fábrica de produção';

  @override
  String get modelYearsAndChassis => 'Anys de model i xassís';

  @override
  String modelYear(Object year) {
    return 'Ano do modelo: $year';
  }

  @override
  String get relatedModels => 'Modelos relacionados';

  @override
  String get exportModelsToCsv => 'Exportar Modelos para CSV';

  @override
  String get credits => 'Créditos';

  @override
  String get loading => 'Carregando...';

  @override
  String get errorLoadingInfo => 'Erro ao carregar informações.';

  @override
  String couldNotOpenUrl(Object url) {
    return 'Não foi possível abrir $url';
  }

  @override
  String get csvDataMessage => 'Aqui estão os dados do modelo em formato CSV.';

  @override
  String errorExportingData(Object error) {
    return 'Erro ao exportar dados: $error';
  }

  @override
  String get chassisSearchDialogModel => 'Modelo';

  @override
  String get vinDecoderDialogTitle => 'Decodificador de VIN';

  @override
  String get vinDecoderDialogInfoTooltip => 'Informações sobre o VIN';

  @override
  String get vinDecoderDialogSubtitle =>
      'Para veículos fabricados no período de 1980-2009 (17 dígitos).';

  @override
  String get vinDecoderDialogHint => 'Introduza o VIN';

  @override
  String get vinDecoderDialogDecodeButton => 'Decodificar';

  @override
  String get vinDecoderDialogCloseButton => 'Fechar';

  @override
  String get vinDecoderDialogError17Chars => 'O VIN deve ter 17 caracteres.';

  @override
  String get vinDecoderDialogErrorDecoding =>
      'Não foi possível decodificar o VIN.';

  @override
  String get vinDecoderDialogVehicleModel => 'Modelo do veículo';

  @override
  String get vinDecoderDialogModelYear => 'Ano do modelo';

  @override
  String get vinDecoderDialogCountry => 'País de fabricação';

  @override
  String get vinDecoderDialogAssemblyPlant => 'Fábrica de montagem';

  @override
  String get vinDecoderDialogManufacturer => 'Fabricante';

  @override
  String get vinDecoderDialogSequenceNumber => 'Número de sequência';

  @override
  String get vinDecoderDialogWMI => 'WMI';

  @override
  String get vinDecoderDialogVDS => 'VDS';

  @override
  String get vinDecoderDialogVIS => 'VIS';

  @override
  String get vinDecoderDialogUnknown => 'Desconhecido';

  @override
  String get vinInfoDialogTitle => 'Informações sobre o VIN (a partir de 1980)';

  @override
  String get vinInfoDialogContent =>
      'Identificação dos chassis da Volkswagen a partir de 1980\n\nOs modelos da Volkswagen fabricados a partir de 1º de agosto de 1979 (ano modelo 1980) adotaram este novo formato de chassi. Os dígitos 1-3 são o Identificador Mundial do Fabricante (WMI), os dígitos 4-9 são a Seção de Descrição do Veículo (VDS) e o restante é a Seção de Identificação do Veículo (VIS).\n\nNa prática, o número pode ser \"decodificado\" da seguinte forma:\n\n**Dígito 1: Local de fabricação**\n  - S-Z: Europa\n  - 1-5: América do Norte\n\n**Dígito 2: Fabricante**\n  - V: Volkswagen\n\n**Dígito 3: Tipo de veículo**\n  - W: Carros de passageiros VW\n  - 1: Veículos comerciais VW\n  - 2: Modelos tipo van da VW\n\n**O VDS (Seção de Descrição do Veículo)**\n\nA seguir, o tipo de veículo aparece com informações sobre a plataforma e a carroceria. Os dígitos 4, 5, 6 e 9 são considerados \"preenchimentos\" (geralmente \"ZZZ\" para carros vendidos na Europa).\n\n**Dígitos 7 e 8: Designação do tipo de modelo da VW**\n  - Estes dois dígitos identificam a plataforma ou o modelo. Exemplos:\n  - 17: Golf Mk1\n  - 19: Golf Mk2\n  - 7H: T5\n  - 70: Vans e picapes T4\n  - 86: Polo antigo\n\n**Dígito 10: Ano do modelo**\n  - Este dígito indica o ano de produção, que vai de 1º de agosto a 31 de julho.\n  - Começa com \'A\' para 1980, \'B\' para 1981 e assim por diante.\n  - As letras I, Q, U, Z e o número 0 não são usadas.\n  - O ciclo se repete, então \'A\' pode ser 1980 ou 2010.\n\n**Dígito 11: Fábrica de produção**\n  - Indica a fábrica de produção do veículo. Exemplos:\n  - W: Wolfsburg (Alemanha)\n  - E: Emden (Alemanha)\n  - M: Puebla (México)\n  - V: Westmoreland (EUA) ou Palmela (Portugal) (desambiguado pelo dígito 1).\n\n**Dígitos 12-17: Número de série exclusivo**\n  - Estes últimos seis dígitos são o número de produção sequencial do veículo naquela fábrica e ano, começando em 000001.';

  @override
  String get couldNotOpenLink => 'Não foi possível abrir o link';

  @override
  String get clearSearch => 'Limpar pesquisa';

  @override
  String get languageTooltip => 'Mudar idioma';
}
