referencesInCompiledMethod: aCompiledMethod
	| classes |
	classes := IdentitySet new.
	1
		to: aCompiledMethod numLiterals
		do: [:i | | lit | ((lit := aCompiledMethod literalAt: i) isVariableBinding
							and: [  lit value isBehavior ])
						ifTrue: [classes add: lit value ]].
	^ classes