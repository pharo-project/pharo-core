newDropListIn: aThemedMorph for: aModel list: listSel getSelected: getSel setSelected: setSel getEnabled: enabledSel useIndex: useIndex help: helpText
	"Answer a drop list for the given model."
	
	^(super
		newDropListIn: aThemedMorph
		for: aModel
		list: listSel
		getSelected: getSel
		setSelected: setSel
		getEnabled: enabledSel
		useIndex: useIndex
		help: helpText)
		roundedCorners: #(1 2)