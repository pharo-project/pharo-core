PharoKernel-private
privCleanTextConstants

	TextConstants TextSharedInformation removeKey: #DefaultTextStyle.
	TextConstants TextSharedInformation removeKey: #DefaultMultiStyle.
	TextConstants TextSharedInformation removeKey: #DefaultFixedTextStyle.
	TextConstants TextSharedInformation removeKey: StrikeFont defaultFontKey.

	Smalltalk allClasses select: [:c | c sharedPools includes: TextConstants] thenDo: [:c | c compileAll ].
