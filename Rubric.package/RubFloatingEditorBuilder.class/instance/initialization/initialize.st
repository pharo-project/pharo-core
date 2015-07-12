initialize
	super initialize.
	announcer := self defaultAnnouncer.
	initialContents := ''.
	acceptOnCR := true.
	font := StandardFonts defaultFont.
	customizeValuable := [  ]