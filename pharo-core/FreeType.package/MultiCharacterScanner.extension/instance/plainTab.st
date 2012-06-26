*FreeType-override
plainTab
	"This is the basic method of adjusting destX for a tab."
	destX := (alignment = Justified and: [self leadingTab not])
		ifTrue:		"embedded tabs in justified text are weird"
			[destX + (textStyle tabWidth - (line justifiedTabDeltaFor: spaceCount)) max: destX]
		ifFalse: 
			[textStyle nextTabXFrom: destX
				leftMargin: leftMargin
				rightMargin: rightMargin].
	pendingKernX := 0.