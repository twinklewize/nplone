import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties: AdditionalProperties(pubName: 'nplone_api'),
  inputSpecFile: 'lib/data/openapi/api-docs.yaml',
  skipSpecValidation: true,
  generatorName: Generator.dart,
  // outputDirectory: 'lib/data/openapi/generated_code/',
)
class OpenApiconfig extends OpenapiGeneratorConfig {}
