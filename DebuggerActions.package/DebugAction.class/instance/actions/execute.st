execute

	self precondition ifTrue: [ 
		self perform: self actionSelector.
		self postAction ] 