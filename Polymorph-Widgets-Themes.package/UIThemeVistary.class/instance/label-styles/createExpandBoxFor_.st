createExpandBoxFor: aSystemWindow
	"Answer a button for maximising/restoring the window."
	
	|form msb|
	form := self windowMaximizeForm.
	msb := MultistateButtonMorph new extent: form extent.
	msb
		activeEnabledNotOverUpFillStyle: (ImageFillStyle form: form);
		passiveEnabledNotOverUpFillStyle: (ImageFillStyle form: form).
	form := self windowMaximizeOverForm.
	msb extent: form extent.
	msb
		activeEnabledOverUpFillStyle: (ImageFillStyle form: form);
		passiveEnabledOverUpFillStyle: (ImageFillStyle form: form).
	form := self windowMaximizeDownForm.
	msb
		extent: form extent;
		activeEnabledOverDownFillStyle: (ImageFillStyle form: form);
		passiveEnabledOverDownFillStyle: (ImageFillStyle form: form);
		addUpAction: [aSystemWindow expandBoxHit];
		setBalloonText: 'Expand to full screen' translated;
		extent: aSystemWindow boxExtent.
	^msb