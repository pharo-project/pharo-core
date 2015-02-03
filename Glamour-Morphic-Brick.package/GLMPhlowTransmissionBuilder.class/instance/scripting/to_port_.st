to: anObject port: aPortObject

	self transmissions do: [ :each  | each destination: (GLMPhlowDestination target: anObject port: aPortObject) ]