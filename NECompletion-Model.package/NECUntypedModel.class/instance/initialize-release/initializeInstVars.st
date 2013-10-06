initializeInstVars
	(clazz isNil or: [ includeVariables not ]) ifTrue: [ ^ self ].
	instVars := clazz allInstVarNames asSortedCollection.
	instVars := instVars collect: 
		[ :each | 
		NECInstVarEntry 
			contents: each
			type: #instVar ].
	instVars add: (NECSelfEntry 
			contents: 'self'
			type: #self).
	instVars add: (NECSuperEntry 
			contents: 'super'
			type: #super)