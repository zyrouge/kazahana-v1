import 'package:hetu_script/binding.dart';
import 'package:hetu_script/hetu_script.dart';
import './class.dart';
import '../../../model.dart';

class BytesContainerClassBinding extends HTExternalClass {
  BytesContainerClassBinding() : super('BytesContainer');

  @override
  dynamic memberGet(
    final String varName, {
    final String? from,
  }) {
    switch (varName) {
      case 'BytesContainer.fromList':
        return createHTExternalFunction(
          (
            final HTEntity entity, {
            final List<dynamic> positionalArgs = const <dynamic>[],
            final Map<String, dynamic> namedArgs = const <String, dynamic>{},
            final List<HTType> typeArgs = const <HTType>[],
          }) =>
              BytesContainer.fromList(
            (positionalArgs[0] as List<dynamic>).cast<int>(),
          ),
        );

      default:
        throw HTError.undefined(varName);
    }
  }

  @override
  dynamic instanceMemberGet(final dynamic object, final String varName) {
    final BytesContainer element = object as BytesContainer;

    switch (varName) {
      case 'add':
        return createHTExternalFunction(
          (
            final HTEntity entity, {
            final List<dynamic> positionalArgs = const <dynamic>[],
            final Map<String, dynamic> namedArgs = const <String, dynamic>{},
            final List<HTType> typeArgs = const <HTType>[],
          }) =>
              element.add(positionalArgs[0] as BytesContainer),
        );

      case 'clone':
        return createHTExternalFunction(
          (
            final HTEntity entity, {
            final List<dynamic> positionalArgs = const <dynamic>[],
            final Map<String, dynamic> namedArgs = const <String, dynamic>{},
            final List<HTType> typeArgs = const <HTType>[],
          }) =>
              element.clone(),
        );

      case 'list':
        return element.list;

      default:
        throw HTError.undefined(varName);
    }
  }
}
