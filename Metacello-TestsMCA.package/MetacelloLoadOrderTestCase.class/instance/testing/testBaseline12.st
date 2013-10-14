testBaseline12
	| loadedPackages project loader |
	project := self class new project.
	loader := (project version: '1.2-baseline') load: 'No UI'.
	loadedPackages := loader loadedPackages asArray.
	self assert: (loadedPackages indexOf: 'Example-Core')
			> 0.
	self assert: (loadedPackages indexOf: 'Example-AddOn')
			> (loadedPackages indexOf: 'Example-Core').
	self assert: (loadedPackages indexOf: 'Example-Tests')
			> (loadedPackages indexOf: 'Example-AddOn').
	self assert: (loadedPackages indexOf: 'Example-UI') = 0.
	self assert: (loadedPackages indexOf: 'Example-TestsUI') = 0.
