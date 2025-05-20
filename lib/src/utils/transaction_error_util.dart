/// Extracts and concatenates all error messages from a nested JSON map structure.
///
/// This function recursively traverses the input [json] map.
/// When it encounters a key named 'message', it appends its corresponding value
/// to a string buffer. If the value associated with a 'message' key is itself a map,
/// it recursively calls itself on that map to extract further nested messages.
/// It also continues traversal for any other map values found.
///
/// - [json]: The input map, typically representing a JSON object with error details.
/// Returns a single string with all extracted error messages concatenated, each prefixed with ' - '.
String extractTransactionErrorMessages(final Map<String, dynamic> json) {
  final messageBuffer = StringBuffer();

  void extractMessages(final Map<String, dynamic> map) {
    map.forEach((final key, final value) {
      if (key == 'message') {
        messageBuffer
          ..write(' - ')
          ..write(value);
        if (value is Map<String, dynamic>) {
          extractMessages(value);
        }
      } else if (value is Map<String, dynamic>) {
        extractMessages(value);
      }
    });
  }

  extractMessages(json);

  return messageBuffer.toString();
}
