buildWidget
	| newWidget |
	newWidget := RubPluggableTextMorph new
		on: self
			text: #getText
			accept: #accept:notifying:
			readSelection: #readSelection
			menu: #codePaneMenu:shifted:
			setSelection: #setSelection:;
		beWrapped;
		enabled: self enabled;
		askBeforeDiscardingEdits: self askBeforeDiscardingEdits;
		autoAccept: self autoAccept;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		setBalloonText: self help;
		dragEnabled: self dragEnabled;
		dropEnabled: self dropEnabled;
		yourself.
	self behavior
		ifNil: [ newWidget beForPlainText ]
		ifNotNil: [ :class | 
			newWidget
				beForSmalltalkCode;
				classOrMetaClass: class ].
	^ newWidget