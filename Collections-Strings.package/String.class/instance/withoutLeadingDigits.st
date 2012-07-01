converting
withoutLeadingDigits
	"Answer the portion of the receiver that follows any leading series of digits and blanks.  If the receiver consists entirely of digits and blanks, return an empty string"
	| firstNonDigit |
	firstNonDigit := (self findFirst: [:m | m isDigit not and: [m ~= $ ]]).
	^ firstNonDigit > 0
		ifTrue:
			[self copyFrom: firstNonDigit  to: self size]
		ifFalse:
			['']

"
'234Whoopie' withoutLeadingDigits
' 4321 BlastOff!' withoutLeadingDigits
'wimpy' withoutLeadingDigits
'  89Ten ' withoutLeadingDigits
'78 92' withoutLeadingDigits
"
