silentSnapshot
	| packageInfo definitions categories |
	
	packageInfo := self packageSet.
	definitions := OrderedCollection new.
	categories := packageInfo categoryNames asArray.
	categories isEmpty 
		ifFalse: [ definitions add: (MCOrganizationDefinition categories: categories) ].
		
	packageInfo methods 
		do: [:ea | definitions add: ea asMCMethodDefinition].
		
	packageInfo overriddenMethods
		do: [:ea | definitions add:
					(packageInfo changeRecordForOverriddenMethod: ea) asMCMethodDefinition].
		
	packageInfo definedClasses 
		do: [:ea | definitions addAll: ea classDefinitions].
		
	(packageInfo respondsTo: #hasPreamble) ifTrue: [
		packageInfo hasPreamble 
			ifTrue: [definitions add: (MCPreambleDefinition from: packageInfo)].
		packageInfo hasPostscript 
			ifTrue: [definitions add: (MCPostscriptDefinition from: packageInfo)].
		packageInfo hasPreambleOfRemoval 
			ifTrue: [definitions add: (MCRemovalPreambleDefinition from: packageInfo)].
		packageInfo hasPostscriptOfRemoval 
			ifTrue: [definitions add: (MCRemovalPostscriptDefinition from: packageInfo)]].
		
	^ MCSnapshot fromDefinitions: definitions