converting
withoutTrailingDigits
	"Answer the portion of the receiver that precedes any trailing series of digits and blanks.  If the receiver consists entirely of digits and blanks, return an empty string"
	| firstDigit |
	firstDigit := (self findFirst: [:m | m isDigit or: [m = $ ]]).
	^ firstDigit > 0
		ifTrue:
			[self copyFrom: 1 to: firstDigit-1]
		ifFalse:
			[self]

"
'Whoopie234' withoutTrailingDigits
' 4321 BlastOff!' withoutLeadingDigits
'wimpy' withoutLeadingDigits
'  89Ten ' withoutLeadingDigits
'78 92' withoutLeadingDigits
"
