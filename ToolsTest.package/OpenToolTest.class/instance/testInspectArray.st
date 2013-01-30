test inspect
testInspectArray
	| inspector |
	inspector := (1 to: 1000) asArray inspect.
	inspector changed.
	inspector close.