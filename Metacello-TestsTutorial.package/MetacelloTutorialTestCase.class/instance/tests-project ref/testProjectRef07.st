testProjectRef07

	| project loadedPackages loader |
	project := self projectRefProject.

	loader := (project version: '0.7') load.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 5.
	self assert: (loadedPackages indexOf: 'Example-Core-anon.12') > 0.
	self assert: (loadedPackages indexOf: 'Project-Core-anon.1') > 
						(loadedPackages indexOf: 'Example-Core-anon.12').
	self assert: (loadedPackages indexOf: 'Example-Tests-anon.3') >
						(loadedPackages indexOf: 'Example-Core-anon.12').
	self assert: (loadedPackages indexOf: 'Project-Tests-anon.1') >
						(loadedPackages indexOf: 'Project-Core-anon.1').
	self assert: (loadedPackages indexOf: 'Project-Tests-anon.1') >
						(loadedPackages indexOf: 'Example-Tests-anon.3').
	self assert: (loadedPackages indexOf: 'Example-AddOn-anon.1') >
						(loadedPackages indexOf: 'Example-Core-anon.12').
