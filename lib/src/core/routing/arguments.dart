class Arguments {
  const Arguments({
    required this.pathParameters,
    this.extra,
  });

  final Map<String, String> pathParameters;
  final Object? extra;
}
