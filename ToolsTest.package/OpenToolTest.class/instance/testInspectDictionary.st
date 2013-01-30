test inspect
testInspectDictionary
	| inspector |
	inspector := (Dictionary new) inspect.
	inspector changed.
	inspector close.