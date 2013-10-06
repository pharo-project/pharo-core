initializeWidgets
	self
		instantiateModels:
			{(#stack -> #MultiColumnListModel).
			(#toolbar -> #SpecDebuggerToolbar).
			(#code -> #TextModel).
			(#receiverInspector -> #InspectorWrapper).
			(#contextInspector -> #EyeDebuggerContextInspector)}.
	
	self stack displayBlock: [ :aContext | self columnsFor: aContext ].
	self code acceptBlock: [ :text :notifyer |
		self 
			recompileMethodTo: text string 
			inContext: self stack selectedItem
			notifying: notifyer ].
		
	self setStackMenu.
	self setStackShortcuts.
	self setFocusOrder