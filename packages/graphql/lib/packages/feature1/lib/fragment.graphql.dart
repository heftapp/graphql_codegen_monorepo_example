import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$F {
  Fragment$F({
    this.name,
    this.$__typename = 'User',
  });

  factory Fragment$F.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$F(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$F) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$F on Fragment$F {
  CopyWith$Fragment$F<Fragment$F> get copyWith => CopyWith$Fragment$F(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$F<TRes> {
  factory CopyWith$Fragment$F(
    Fragment$F instance,
    TRes Function(Fragment$F) then,
  ) = _CopyWithImpl$Fragment$F;

  factory CopyWith$Fragment$F.stub(TRes res) = _CopyWithStubImpl$Fragment$F;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithImpl$Fragment$F(
    this._instance,
    this._then,
  );

  final Fragment$F _instance;

  final TRes Function(Fragment$F) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$F(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$F<TRes> implements CopyWith$Fragment$F<TRes> {
  _CopyWithStubImpl$Fragment$F(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionF = FragmentDefinitionNode(
  name: NameNode(value: 'F'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentF = DocumentNode(definitions: [
  fragmentDefinitionF,
]);

extension ClientExtension$Fragment$F on graphql.GraphQLClient {
  void writeFragment$F({
    required Fragment$F data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'F',
            document: documentNodeFragmentF,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$F? readFragment$F({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'F',
          document: documentNodeFragmentF,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$F.fromJson(result);
  }
}
