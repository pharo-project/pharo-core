accessing
font
	"Answer the probable font"

	^self textStyle fonts
		ifEmpty: [TextStyle defaultFont]
		ifNotEmpty: [:fonts | fonts first]