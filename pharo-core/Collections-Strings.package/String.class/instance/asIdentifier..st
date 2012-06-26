converting
asIdentifier: shouldBeCapitalized
	"Return a legal identifier, with first character in upper case if shouldBeCapitalized is true, else lower case.  This will always return a legal identifier, even for an empty string"

	| aString firstChar firstLetterPosition |
	aString := self select: [:el | el isAlphaNumeric].
	firstLetterPosition := aString findFirst: [:ch | ch isLetter].
	aString := firstLetterPosition = 0
		ifFalse:
			[aString copyFrom: firstLetterPosition to: aString size]
		ifTrue:
			['a', aString].
	firstChar := shouldBeCapitalized ifTrue: [aString first asUppercase] ifFalse: [aString first asLowercase].

	^ firstChar asString, (aString copyFrom: 2 to: aString size)
"
'234Fred987' asIdentifier: false
'235Fred987' asIdentifier: true
'' asIdentifier: true
'()87234' asIdentifier: false
'())z>=PPve889  U >' asIdentifier: false

"