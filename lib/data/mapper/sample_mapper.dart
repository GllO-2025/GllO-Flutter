import 'package:gllo_flutter/data/entity/sample/sample_entity.dart';
import 'package:gllo_flutter/domain/model/sample/sample_model.dart';

extension SampleEntityExt on SampleEntity {
  SampleModel toModel() => SampleModel(id: id, title: title, content: content);
}
