// Packages
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties: AdditionalProperties(pubName: 'nplone_api'),
  inputSpecFile: 'lib/data/openapi_config/api-docs.yaml',
  skipSpecValidation: true,
  generatorName: Generator.dioNext,
  outputDirectory: '.nplone_openapi_package',
  overwriteExistingFiles: true,
  alwaysRun: true,
)
class OpenapiConfig extends OpenapiGeneratorConfig {}
