initializeWithTarget: targetSnapshot
	| target |	
		
	operations := OrderedCollection new.
	target := MCDefinitionIndex definitions: targetSnapshot definitions.
	
	operations := (target definitions collect: [ :definition | MCAddition of: definition ] asOrderedCollection).