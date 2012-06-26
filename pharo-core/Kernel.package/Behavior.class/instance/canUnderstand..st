testing method dictionary
canUnderstand: selector 
	"Answer whether the receiver can respond to the message whose selector 
	is the argument. The selector can be in the method dictionary of the 
	receiver's class or any of its superclasses."

	(self includesSelector: selector) ifTrue: [^true].
	superclass == nil ifTrue: [^false].
	^superclass canUnderstand: selector