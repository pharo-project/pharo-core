shortcuts
removeShortcuts: groupSymbol from: aMorph
	Nautilus useOldStyleKeys ifFalse: [ ^self ].
	aMorph 
		detachKeymapCategory: groupSymbol
		targetting: self
