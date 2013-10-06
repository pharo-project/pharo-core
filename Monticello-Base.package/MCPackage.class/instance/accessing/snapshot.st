snapshot
	| packageInfo definitions categories |
	packageInfo := self packageSet.
	definitions := OrderedCollection new.
	categories := (packageInfo packages collect: #packageName) asArray.
	categories isEmpty 
		ifFalse: [ definitions add: (MCOrganizationDefinition categories: categories) ].
		
	packageInfo methods 
		do: [:ea | definitions add: ea asMCMethodDefinition] 
		displayingProgress: [ :ea| 'Snapshotting methods...' ].
		
	packageInfo overriddenMethods
		do: [:ea | definitions add:
					(packageInfo changeRecordForOverriddenMethod: ea) asMCMethodDefinition]
		displayingProgress: [ :ea| 'Searching for overrides in ', ea asString ].
		
	packageInfo definedClasses 
		do: [:ea | definitions addAll: ea classDefinitions] 
		displayingProgress: [ :ea| 'Snapshotting class ', ea asString ].
		
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
