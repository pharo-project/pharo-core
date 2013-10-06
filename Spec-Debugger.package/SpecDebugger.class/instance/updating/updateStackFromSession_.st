updateStackFromSession: aSession
	
	self stack items: (aSession 
		ifNil: [ OrderedCollection new ] 
		ifNotNil: [ aSession stackOfSize: self class defaultStackSize ] )
	"self stack setSelectedItem: aStack first"