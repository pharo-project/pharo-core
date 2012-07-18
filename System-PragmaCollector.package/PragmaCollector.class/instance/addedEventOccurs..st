system changes
addedEventOccurs: anEvent
	"method adding event occured: if the 
	concerned method contains a pragma then 
	try to update myself with it"
	Pragma
		withPragmasIn: anEvent itemClass
		do: [:pragma | pragma selector = anEvent itemSelector
				ifTrue: [self addPragma: pragma]] 