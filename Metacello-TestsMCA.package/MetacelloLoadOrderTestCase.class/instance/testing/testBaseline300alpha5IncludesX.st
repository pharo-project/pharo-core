testBaseline300alpha5IncludesX
	"make sure that includes: constraints are met"
	"the includes: directive should slave the included package such that included packages are 
	 loaded before any of the packages that require the base package."
	
	| project loadedPackageNames loadedPackageSpecs baseSpecName loader |
	project := self class new project.
	loader := project load: '3.0.0-alpha5-baseline'.
	loadedPackageNames := loader loadedPackages asArray.
	loadedPackageSpecs := loader packages.
	loadedPackageSpecs do: [:baseSpec |
		baseSpecName := baseSpec name.
		"this only applies to packageSpecs, groups are not treated this way"
		baseSpec includes do: [:includedSpecName |
			loadedPackageSpecs do: [:spec |
				(spec requires includes: baseSpecName)
					ifTrue: [
						self assert: 
							((loadedPackageNames indexOf: spec name) >=
								(loadedPackageNames indexOf: includedSpecName)).
						self assert: 
							((loadedPackageNames indexOf: spec name) >
								(loadedPackageNames indexOf: baseSpecName)) ].
				(spec requires includes: includedSpecName)
					ifTrue: [
						self assert: 
							((loadedPackageNames indexOf: spec name) >
								(loadedPackageNames indexOf: includedSpecName)) ]]]].