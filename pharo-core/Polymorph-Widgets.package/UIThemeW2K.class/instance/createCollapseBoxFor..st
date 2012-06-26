label-styles
createCollapseBoxFor: aSystemWindow
	"Answer a button for closing the window."
	
	|form msb|
	form := self windowMinimizeForm.
	msb := MultistateButtonMorph new extent: form extent.
	msb activeEnabledNotOverUpFillStyle: (ImageFillStyle form: form).
	msb passiveEnabledNotOverUpFillStyle: (ImageFillStyle form: form).
	msb activeEnabledOverUpFillStyle: (ImageFillStyle form: form).
	msb passiveEnabledOverUpFillStyle: (ImageFillStyle form: form).
	
	form := self windowMinimizeDownForm.
	msb activeEnabledOverDownFillStyle: (ImageFillStyle form: form).
	msb passiveEnabledOverDownFillStyle: (ImageFillStyle form: form).
	msb addUpAction: [aSystemWindow collapseBoxHit ].
	msb setBalloonText: 'Minimize' translated.
	"	extent: aSystemWindow boxExtent."
	^msb