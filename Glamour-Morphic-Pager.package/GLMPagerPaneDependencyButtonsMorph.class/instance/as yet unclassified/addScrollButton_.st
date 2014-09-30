addScrollButton: aMorph
	|arrowScaleMultiplier|
	arrowScaleMultiplier := 2.
	
	pagerModel size > 1 ifTrue: [
		self addMorphBack: (ImageMorph withForm: (GLMForm increaseFormExtentCentered: (GLMForm scaleForm: GLMUIThemeExtraIcons glamorousPlay to: (pagerModel dependencyButtonSize @ pagerModel dependencyButtonSize) / arrowScaleMultiplier ) to: (pagerModel dependencyButtonSize @ pagerModel dependencyButtonSize)))
	].
	
	super addScrollButton: aMorph.