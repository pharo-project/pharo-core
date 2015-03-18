singleClick: anEvent
	
	self isEnabled ifTrue: [ ^ super click: anEvent ].

	"sorry for such a dirty hack"
	self owner owner owner owner owner container  
		ifNotNil: [ :aContainer | aContainer listManager mouseUp: anEvent on: self owner owner owner owner owner. ]
		