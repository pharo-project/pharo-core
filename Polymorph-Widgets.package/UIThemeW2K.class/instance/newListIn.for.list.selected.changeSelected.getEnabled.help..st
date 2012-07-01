morph creation
newListIn: aThemedMorph for: aModel list: listSelector selected: getSelector changeSelected: setSelector getEnabled: enabledSel help: helpText
	"Answer a list for the given model."

	^PluggableListMorph new
		selectionColor: self selectionColor;
		font: self listFont;
		on: aModel
		list: listSelector
		selected: getSelector
		changeSelected: setSelector
		menu: nil
		keystroke: nil;
		autoDeselect: false;
		cornerStyle: #square;
		color: Color white;
		borderStyle: (BorderStyle inset width: 1; baseColor: Color black);
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		getEnabledSelector: enabledSel;
		setBalloonText: helpText