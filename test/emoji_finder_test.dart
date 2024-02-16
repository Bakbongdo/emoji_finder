import 'package:flutter_test/flutter_test.dart';
import 'package:emoji_finder/emoji_finder.dart';

void main() {
  test('Test Of emojiFinder() Work', () {
    String sampleWithEmoji = 'sample📌';
    String sampleWithoutEmoji = 'sample';

    expect(emojiFinder(sampleWithEmoji), true);
    expect(emojiFinder(sampleWithoutEmoji), false);
  });

  test('Test Of emojiFinder(isEmojiFirst:true) Work', () {
    String sampleWithEmojiFirst = '📌sample';
    String sampleWithEmojiLast = 'sample📌';

    expect(emojiFinder(sampleWithEmojiFirst, isEmojiFirst: true), true);
    expect(emojiFinder(sampleWithEmojiLast, isEmojiFirst: true), false);
  });
}
