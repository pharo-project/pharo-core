font
emphasis: aNumber
	"Set the receiver's emphasis as indicated. aNumber is a bitmask with the following format:

	bit	attribute
	1	bold
	2	italic
	4	underlined
	8	narrow
	16	struckOut"

	"examples: 0 -> plain.  
	1 -> bold.  2 -> italic.  3 -> bold italic.  4 -> underlined  
	5 -> bold underlined.  6 -> italic underlined.   7 -> bold italic underlined   
	etc..."

	emphasis := aNumber.
	^ self font: font emphasis: emphasis