convertJson(Map<String, dynamic>? json, Function f) {
  if (json == null) {
    return null;
  }
  return f(json);
}
