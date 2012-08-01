initialize
setValueTo: anObject

	self model ifNil: [ ^ self ].
	self method ifNil: [ ^ self ].
	
	self isSetting ifFalse: [ 
		self isSetting: true.
		self model perform: (self method) with: anObject.
		self isSetting: false ].