debugger access
tempScopedNames
	"Answer a SequenceableCollection of the names of the receiver's temporary 
	 variables, which are strings."

	^ self debuggerMap tempNamesScopedForContext: self