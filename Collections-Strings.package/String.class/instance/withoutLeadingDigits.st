converting
withoutLeadingDigits
	"Answer the portion of the receiver that follows any leading series of digits and blanks.  If the receiver consists entirely of digits and blanks, return an empty string
	'234Whoopie' withoutLeadingDigits
	' 4321 BlastOff!' withoutLeadingDigits
	'wimpy' withoutLeadingDigits
	'T  89Ten ' withoutLeadingDigits
	'  89Ten ' withoutLeadingDigits
	'78 92' withoutLeadingDigits
	"
	^ self trimLeft: [ :char| char isDigit or: [ char isSeparator]]