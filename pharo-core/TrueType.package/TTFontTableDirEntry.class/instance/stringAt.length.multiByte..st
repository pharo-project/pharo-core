accessing
stringAt: stringOffset length: byteLength multiByte: aBoolean

	| string index stringLength |
	aBoolean ifFalse:[
		stringLength := byteLength.
		string := String new: stringLength.
		index := stringOffset.
		1 to: stringLength do:[:i|
			string at: i put: (Character value: (fontData byteAt: index + i - 1))].
		^string
	] ifTrue:[
		stringLength := byteLength // 2.
		string := String new: stringLength.
		index := stringOffset.
		1 to: stringLength do:[:i|
			string at: i put: (Character value: (fontData byteAt: index + 1)).
			index := index + 2].
		^string]