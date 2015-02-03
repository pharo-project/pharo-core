from: anObject
	
	self transmissions do: [ :each | each addOrigin: (GLMPhlowOrigin target: (each phlow phlowValue: each phlow) slot: anObject) ].