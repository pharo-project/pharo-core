meta-actions
invokeMetaMenu: evt
	| menu |
	
	menu := self buildMetaMenu: evt.
	menu addTitle: self externalName.
	self world ifNotNil: [
		menu popUpEvent: evt in: self world
	]