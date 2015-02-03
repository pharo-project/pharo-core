to: anObject

	self transmissions do: [ :each | each destination: (GLMPhlowDestination 
		target: each phlow 
		port: (each phlow class slotsDictionary at: anObject)) ]