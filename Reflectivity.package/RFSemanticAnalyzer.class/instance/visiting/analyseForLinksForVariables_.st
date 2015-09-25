analyseForLinksForVariables: aVariable
	| generator |
	aVariable hasMetalink
		ifFalse: [ ^ self ].
	generator := HookGeneratorForVariables node: aVariable.
	self analyseForLinks: aVariable generator: generator.

