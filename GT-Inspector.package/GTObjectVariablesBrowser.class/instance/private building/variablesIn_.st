variablesIn: composite
	^ composite table
		showOnly: 50;
		shouldValidate: false;
		children: [ :assoc | assoc key = 'self'
			ifTrue: [ #() ]
			ifFalse: [ self variableValuePairsFor: assoc value ] ];
		icon: [ :assoc | self iconFor: assoc value ];
		display: [ :anObject | (self variableValuePairsFor: anObject)
				addFirst: 'self' -> anObject;
				yourself ];
		column: 'Variable' 
			evaluated: [:assoc | '  ',(GTObjectPrinter new asNonTruncatedTextFrom: assoc key) ];
		column: 'Value' 
			evaluated: [:assoc | GTObjectPrinter new asTruncatedTextFrom: assoc value ]
			modified: [:newValue :assoc :presentation | 
				self updateInstanceVariable: assoc key from: presentation entity basedOn: newValue.
				presentation update ];
		"send: #value;"
		morphicSelectionAct: [:list | list selection value browse ] 
			icon: GLMUIThemeExtraIcons glamorousBrowse 
			on: $b 
			entitled: 'Browse';
		morphicSelectionAct: [:list | list selection value inspect ] 
			icon: GLMUIThemeExtraIcons glamorousInspect 
			on: $i 
			entitled: 'Inspect';
		selectionAct: [:list | 
			((list selection pointersToExcept: { list selection })
									reject: [ :each | each pointsOnlyWeaklyTo: list selection ]) inspect ] 
			on: $t
			entitled: 'Open pointers to'