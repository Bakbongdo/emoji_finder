part of '../emoji_finder.dart';

///  This is a RegExp for checking if an emoji is used in your text
/// without hardcoding(e.g. \uFE0F). This RegExp use property of unicode.
/// For more property of unicode, Please refer to the following link:
/// https://en.wikipedia.org/wiki/Unicode_character_property
RegExp _f = RegExp(r'[^\p{L}^\p{N}^\p{M}^\p{P}^ ]', unicode: true);

///  If isFirst = true, emojiFinder() will return true when
/// the first of your input text is emoji.
bool emojiFinder(
  String text, {
  bool isEmojiFirst = false,
}) {
  String trimed = text.trim();
  bool useEmoji = trimed.contains(_f);

  if (!isEmojiFirst) return useEmoji;

  if (trimed.isEmpty) return false;

  return _f.hasMatch(trimed[0]);
}
