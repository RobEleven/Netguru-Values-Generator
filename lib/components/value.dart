class Value {
  final String statement;

  Value({this.statement});

  @override
  String toString() => statement;

  add() => add().toString();
}
