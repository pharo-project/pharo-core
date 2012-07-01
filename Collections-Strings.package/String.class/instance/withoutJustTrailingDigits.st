converting
withoutJustTrailingDigits
	"Answer the portion of the receiver that precedes any trailing series of digits.  If the receiver consists entirely of digits and blanks, return an empty string"
	| firstDigit |
	firstDigit := (self findFirst: [:m | m isDigit]).
	^ firstDigit > 0
		ifTrue:
			[(self copyFrom: 1 to: firstDigit-1) trimRight]
		ifFalse:
			[self]

"
'Wh oopi e234' withoutJustTrailingDigits
'Wh oopi e 234' withoutJustTrailingDigits
"
