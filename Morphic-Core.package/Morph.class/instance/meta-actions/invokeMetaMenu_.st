invokeMetaMenu: evt
	| menu |
	
	UserManager default canShowMorphHalo
		ifFalse: [ ^ self ].
	menu := self buildMetaMenu: evt.
	menu addTitle: self externalName.
	self world ifNotNil: [
		menu popUpEvent: evt in: self world
	]