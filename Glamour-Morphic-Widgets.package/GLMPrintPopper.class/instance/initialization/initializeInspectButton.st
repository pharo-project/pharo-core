initializeInspectButton
	inspectButton := MultistateButtonMorph new
		extent: GLMUIThemeExtraIcons glamorousInspect extent;
		activeEnabledOverUpFillStyle: (ImageFillStyle form: GLMUIThemeExtraIcons glamorousInspect);
		setBalloonText: 'Inspect' translated.
	self
		addMorph: inspectButton
		fullFrame: (LayoutFrame fractions: (1 @ 0 corner: 1 @ 0) offsets: (inspectButton width negated @ 6 corner: 6 @ 28))