initializeWidgets
	
	stack := self instantiate: SpecDebuggerStack.
	toolbar := self instantiate: SpecDebuggerDynamicToolbar.
	code := self newCode.
	receiverInspector := self instantiate: InspectorNavigator.
	contextInspector := self instantiate: EyeDebuggerContextInspector.
	
	self code acceptBlock: [ :text :notifyer |
		self 
			recompileMethodTo: text string 
			inContext: self stack selectedItem
			notifying: notifyer ].

	self code whenBuiltDo: [ :ann | ann widget font: self codeFont ].
	
	self code menuHolder: [ :menu :shifted |
		self codeContextMenu: menu shifted: shifted].

	self setFocusOrder