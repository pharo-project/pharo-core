codeMethod: selector block: block tempVars: vars primitive: primitive class: class

	| methodNode visibleTemps arguments temporaries |
	tempVars := vars.
	visibleTemps := OrderedCollection new.
	tempVars do: [ :t |
				   t isIndirectTempVector
						ifTrue: [ t remoteTemps do: [ :remote | visibleTemps addLast: remote ] ]
						ifFalse: [visibleTemps addLast: t] ].
	arguments := visibleTemps copyFrom: 1 to: nArgs.
	temporaries := visibleTemps copyFrom: nArgs + 1 to: visibleTemps size.
	temporaries := temporaries reject: [ :e | e propertyAt: #hidden ifAbsent: false ].
	methodNode := RBMethodNode 
		selector: selector
		arguments: arguments
		body: block body.
	methodNode body temporaries: temporaries.
	methodNode pragmas: (self pragmasForMethod: primitive).
	methodNode properties: method properties copy.
	methodNode properties method: methodNode.
	^methodNode