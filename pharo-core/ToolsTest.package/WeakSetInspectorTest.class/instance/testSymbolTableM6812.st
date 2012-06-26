testing
testSymbolTableM6812
	"this test is related to http://bugs.squeak.org/view.php?id=6812"
	
	| aWeakSet anInspector fieldSize |
	aWeakSet := (Symbol classPool at: #SymbolTable).
	anInspector := (Smalltalk tools inspectorClassOf: aWeakSet) inspect: aWeakSet.
	
	fieldSize := anInspector fieldList size.
	3 timesRepeat:
		[Smalltalk garbageCollect.
		self assert: fieldSize = anInspector fieldList size.]
	