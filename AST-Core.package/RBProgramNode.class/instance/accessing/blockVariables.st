blockVariables
	^parent ifNil: [#()] ifNotNil: [parent blockVariables]