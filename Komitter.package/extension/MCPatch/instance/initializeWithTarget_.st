initializeWithTarget: targetSnapshot
	| target |	
		
	operations := OrderedCollection new.
	target := MCDefinitionIndex definitions: targetSnapshot definitions.
	
	target definitions do: [ :definition | operations add: (MCAddition of: definition) ].