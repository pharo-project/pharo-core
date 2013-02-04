menus behavior
toggleBreakPoint
	
	self selectedMethod 
		ifNotNil: [:meth | 
			self toggleBreakOnEntryIn: meth.
			self update ].
		