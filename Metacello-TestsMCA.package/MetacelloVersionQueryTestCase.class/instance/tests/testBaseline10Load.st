testBaseline10Load
	| loadedPackages project loader |
	project := self exampleProject.
	loader := (project version: '1.0-baseline') load: 'UI'.
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
