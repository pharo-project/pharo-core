as yet unclassified
defaultColorMap
	"Answer the default colour map."

	|black grey|
	black := Color black.
	grey := Color gray.
	^Dictionary new
		at: #normal put: black;
		at: #mouseOver put: black;
		at: #pressed put: black;
		at: #disabled put: grey;
		at: #selected put: black;
		at: #selectedPressed put: black;
		at: #selectedMouseOver put: black;
		at: #selectedDisabled put: grey;
		yourself
		