scanVersionsOf: method class: aClass meta: meta category: cat selector: aSelector

	^( ChangeSet scanVersionsOf: method class: aClass meta: meta category: cat selector: aSelector) collectWithIndex:[:c :i | |rg| rg:= c asRingDefinition. rg annotationNamed:#versionIndex put:i ]
