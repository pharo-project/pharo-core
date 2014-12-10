initialize
	super initialize.
	
	allPragmaKeys := OrderedCollection new.
	selectedPragmaKeys := OrderedCollection new.
	defaultPragmaKey := #gtInspectorTagDefault