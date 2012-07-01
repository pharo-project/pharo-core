icons behavior
arrowUp: aMethod

	| newMethod |
	newMethod := aMethod methodClass superclass lookupSelector: aMethod selector.
	self model class openOnMethod: newMethod