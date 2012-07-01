transforming
removeArgument
	"Removes the excess argument if any.
	This argument is the variable which is
	referenced by self in the classes the
	method is moved to. "
	| removeIndex |
	removeIndex := parseTree argumentNames indexOf: variable.
	removeIndex = 0 ifFalse: 
		[parseTree arguments: ((parseTree arguments asOrderedCollection)  
									removeAt: removeIndex; yourself) asArray.
		parseTree selectorParts: ((parseTree selectorParts asOrderedCollection) 
									removeAt: removeIndex; yourself) asArray].