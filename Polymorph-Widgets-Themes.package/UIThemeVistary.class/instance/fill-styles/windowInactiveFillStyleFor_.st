windowInactiveFillStyleFor: aWindow
	"Return the window inactive fillStyle for the given window."
	
	^self settings fadedBackgroundWindows
		ifTrue: [(aWindow paneColorToUse alpha: self windowFillStyleAlpha)
					alphaMixed: 0.9
					with: (Color white alpha: aWindow paneColorToUse alpha)]
		ifFalse: [aWindow paneColorToUse alpha: self windowFillStyleAlpha]