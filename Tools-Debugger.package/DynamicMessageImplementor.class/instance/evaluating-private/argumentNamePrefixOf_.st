argumentNamePrefixOf: argumentClassName

	^ argumentClassName first isVowel
		ifTrue: [ 'an' ]
		ifFalse: [ 'a' ]