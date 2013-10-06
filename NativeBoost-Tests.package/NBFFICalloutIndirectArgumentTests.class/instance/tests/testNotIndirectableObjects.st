testNotIndirectableObjects
	|ok |
	ok := {
	2. "small integer"
	100 factorial. "large positive integer"
	3.4. "float"
	'abcd'. "bytestring"
	'abcd' asByteArray. "bytearray"
	}.
	ok do:[:each | self deny: (self primIsPointers: each)].