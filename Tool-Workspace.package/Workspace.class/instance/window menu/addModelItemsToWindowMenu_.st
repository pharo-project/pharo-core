addModelItemsToWindowMenu: aMenu
	aMenu addLine.
	aMenu add: 'Open...' translated target: self action: #openCommand.
	aMenu lastItem icon: Smalltalk ui icons smallOpenIcon.
	aMenu add: 'Save as...' translated target: self action: #saveAsCommand.
	aMenu lastItem icon: Smalltalk ui icons smallSaveAsIcon.
	self fileName ifNotNil: [ aMenu add: 'Reload' translated target: self action: #reloadCommand ].
	aMenu addLine.
	aMenu
		add: 'Encoding' translated
		subMenu:
			([ :menu | 
			TextConverter allEncodingNames
				do: [ :ea | 
					menu
						addUpdating: #itemForEncoding:
						target: self
						selector: #useEncoding:
						argumentList: {ea} ].
			menu ] value: (UIManager default newMenuIn: self for: self)).
	aMenu addLine.
	aMenu
		addUpdating: #itemForCr
		target: self
		selector: #useLineEnding:
		argumentList: {#cr}.
	aMenu
		addUpdating: #itemForLf
		target: self
		selector: #useLineEnding:
		argumentList: {#lf}.
	aMenu
		addUpdating: #itemForCrLf
		target: self
		selector: #useLineEnding:
		argumentList: {#crlf}.
	aMenu addLine.
	aMenu add: 'Inspect variables' translated target: self action: #browseBindings.
	aMenu add: 'Reset variables' translated target: self action: #initializeBindings.
	aMenu addUpdating: #mustDeclareVariableWording target: self action: #toggleVariableDeclarationMode.
	aMenu addUpdating: #acceptDroppedMorphsWording target: self action: #toggleDroppingMorphForReference.
	aMenu add: 'Previous contents...' target: self selector: #selectPreviousContent.
	aMenu addLine.
	aMenu addUpdating: #stylingActiveString target: self action: #toggleStylingActive