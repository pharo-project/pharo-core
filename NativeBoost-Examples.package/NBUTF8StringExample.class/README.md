This is an example of defining custom type.
This type accepts a string(s) and converts them into utf-8 representation on stack on the fly and then pushes the pointer to converted string to callee.



UTF8TextConverter new convertFromSystemString: (
NBBasicExamples new encodeToUTF8: 'owehjfopeh fr´' asWideString)