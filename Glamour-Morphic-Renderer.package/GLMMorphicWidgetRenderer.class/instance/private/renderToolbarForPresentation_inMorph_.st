renderToolbarForPresentation: aPresentation inMorph: aMorph
	| dock tools buttons noIconActions |
	dock := aMorph theme newToolDockingBarIn: aMorph.
	buttons := (aPresentation allActions select: [:each | each isButton ]) 
		collect: [:each | 
			(each renderGlamorouslyOn: self renderer)
				arguments: { aPresentation };
				yourself ].
	noIconActions := aPresentation allActions select: #isMenu.
	tools := aMorph theme newToolbarIn: aMorph for: buttons.
	noIconActions isEmpty ifFalse: [
			| activeForm passiveForm menuButton | 
			activeForm := GLMMorphicIcons toolbarMenuForm.
			passiveForm := GLMMorphicIcons toolbarMenuInactiveForm.
			menuButton := MultistateButtonMorph new extent: activeForm extent.
			menuButton
				extent: activeForm extent;
						activeEnabledOverUpFillStyle: (ImageFillStyle form: activeForm);
						passiveEnabledOverUpFillStyle: (ImageFillStyle form: activeForm);
						activeEnabledOverDownFillStyle: (ImageFillStyle form: passiveForm);
				passiveEnabledOverDownFillStyle: (ImageFillStyle form: passiveForm);
				addUpAction: [ | menu |
						menu := self menuIn: MenuMorph new for: aPresentation.
						menu popUpEvent: self currentEvent in: aMorph world ];
				setBalloonText: 'Menu' translated.
			buttons do: [:each | dock addMorphBack: each ].
			dock addMorphBack: menuButton.
			"isEmpty ifFalse: [dock addMorphBack: tools]" ]
		ifTrue: [ dock addAllMorphs: buttons ].
	^ dock