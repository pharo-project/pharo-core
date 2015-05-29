expandCondensedStyle: aString
	"Assuming a keyText 'Old Style': the menu keys will come as 'o, k'"
	^ String streamContents: [ :stream | | keys |
		keys := (aString substrings: ',') collect: [ :each | each trimBoth ].
		stream << OSPlatform current menuShortcutString capitalized << ' + '.
		(keys anySatisfy: [ :each | each first isUppercase ]) ifTrue: [ stream << 'Shift + ' ].
		keys 
			do: [ :each | stream << each asLowercase capitalized ]
			separatedBy: [ stream << ' + ' ] ]