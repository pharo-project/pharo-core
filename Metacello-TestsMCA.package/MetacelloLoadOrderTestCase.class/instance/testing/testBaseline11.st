testBaseline11
	| loadedPackages project loader |
	project := self class new project.
	loader := project load: '1.1-baseline'.
	loadedPackages := loader loadedPackages asArray.
	self assert: (loadedPackages indexOf: 'Example-Core')
			> 0.
	self assert: (loadedPackages indexOf: 'Example-AddOn')
			> (loadedPackages indexOf: 'Example-Core').
	self assert: (loadedPackages indexOf: 'Example-Tests')
			> (loadedPackages indexOf: 'Example-AddOn').
	self assert: (loadedPackages indexOf: 'Example-UI')
			> (loadedPackages indexOf: 'Example-AddOn').
	self assert: (loadedPackages indexOf: 'Example-TestsUI')
			> (loadedPackages indexOf: 'Example-UI').
	self assert: (loadedPackages indexOf: 'Example-TestsUI')
			> (loadedPackages indexOf: 'Example-Tests').
