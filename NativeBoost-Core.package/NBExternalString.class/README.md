NBExternalString type can be used to coerce squeak's String to char* back and forth.

Use #String or #NBExternalString as type name.

Some functions may accept null as a valid argument (if string is optional).
You can set #optStringOrNull in callout options in that case.

If type is used as return value type, then C string (char *) converted to ByteString instance.
If return value is null, a nil will be answered instead.