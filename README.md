# emoji_finder
 This package will help you check if an emoji is used in your text without hardcoding(e.g. \uFE0F).

## Usage
 A simple usage example:
 ```dart
 import 'package:emoji_finder/emoji_finder.dart';

 void main(){
    String sample = 'Sample';
    String sampleWithEmoji = 'Sample 📌';
    String sampleWithEmojiFirst = '📌 Sample';

    // *** trim() is applied automatically ***

    print(emojiFinder(sample)); //false
    print(emojiFinder(sampleWithEmoji)); //true

    //false
    print(emojiFinder(sampleWithEmoji, isEmojiFirst:true));

    //true
    print(emojiFinder(sampleWithEmojiFirst, isEmojiFirst:true));
 }

 ```