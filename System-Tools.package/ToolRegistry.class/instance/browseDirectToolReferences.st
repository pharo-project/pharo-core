misc
browseDirectToolReferences
	"Smalltalk tools browseDirectToolReferences"
	"Browse all direct references of all of my registered tools.
	Useful for converting calls like:

		MyTool foo
	into:
		Smalltalk tools myTool foo 	"
	
	| bindings sn |
	
	bindings := tools values select: [:each | each value isBehavior ]
		thenCollect: [:each | each value binding ].
	bindings := bindings copyWith: (Smalltalk bindingOf: #ToolSet).
	
	sn := SystemNavigation default.	

	^ sn
		browseMessageList: (
			sn allMethodsSelect: [:m |
				(m literals allButLast select: [:lit| lit isVariableBinding ]) includesAnyOf: bindings ] )
		name: 'All direct references to tools to fix'