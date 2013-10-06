initializeWidgets
	self
		instantiateModels:
			{(#stack -> #SpecDebuggerStack).
			(#toolbar -> #SpecDebuggerDynamicToolbar).
			(#code -> #TextModel).
			(#receiverInspector -> #InspectorNavigator).
			(#contextInspector -> #EyeDebuggerContextInspector)}.
	
	self code acceptBlock: [ :text :notifyer |
		self 
			recompileMethodTo: text string 
			inContext: self stack selectedItem
			notifying: notifyer ].

	self setFocusOrder