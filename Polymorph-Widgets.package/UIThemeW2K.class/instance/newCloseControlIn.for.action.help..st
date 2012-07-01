morph creation
newCloseControlIn: aThemedMorph for: aModel action: aValuable help: helpText
	"Answer a button for closing things."
	
	|form msb|
	form := self windowCloseForm.
	msb := MultistateButtonMorph new extent: form extent.
	msb activeEnabledNotOverUpFillStyle: (ImageFillStyle form: form).
	msb passiveEnabledNotOverUpFillStyle: (ImageFillStyle form: form).
	msb activeEnabledOverUpFillStyle: (ImageFillStyle form: form).
	msb passiveEnabledOverUpFillStyle: (ImageFillStyle form: form).
	
	form := self windowCloseDownForm.
	msb
		activeEnabledOverDownFillStyle: (ImageFillStyle form: form);
		passiveEnabledOverDownFillStyle: (ImageFillStyle form: form);
		addUpAction: aValuable;
		setBalloonText: helpText.
	^msb