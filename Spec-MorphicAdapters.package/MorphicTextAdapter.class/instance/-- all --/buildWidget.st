buildWidget
	^ PluggableTextMorph new
		classOrMetaClass: self behavior;
		on: self
			text: #getText
			accept: #accept:notifying:
			readSelection: #readSelection
			menu: #codePaneMenu:shifted:
			setSelection: #setSelection:;
		enabled: self enabled;
		askBeforeDiscardingEdits: self askBeforeDiscardingEdits;
		autoAccept: self autoAccept;
		setBalloonText: self help;
		dragEnabled: self dragEnabled;
		dropEnabled: self dropEnabled;
		registerScrollChanges: #scrollValueChanged:;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		yourself