testProjectRef12

	| project loadedPackages loader |
	project := self projectRefProject.

	loader := (project version: '1.2') load.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 8.
	self assert: (loadedPackages indexOf: 'Example-Core-anon.16') > 0.
	self assert: (loadedPackages indexOf: 'Example-AddOn-anon.1') >
						(loadedPackages indexOf: 'Example-Core-anon.16').
	self assert: (loadedPackages indexOf: 'Example-AddOnTests-anon.1') >
						(loadedPackages indexOf: 'Example-AddOn-anon.1').
	self assert: (loadedPackages indexOf: 'Example-Tests-anon.5') >
						(loadedPackages indexOf: 'Example-Core-anon.16').
	self assert: (loadedPackages indexOf: 'Example-AddOnTests-anon.1') >
						(loadedPackages indexOf: 'Example-Tests-anon.5').


	self assert: (loadedPackages indexOf: 'Project-Core-anon.1') > 
						(loadedPackages indexOf: 'Example-Core-anon.16').
	self assert: (loadedPackages indexOf: 'Project-Core-anon.1') > 
						(loadedPackages indexOf: 'Example-AddOn-anon.1').

	self assert: (loadedPackages indexOf: 'Project-Tests-anon.1') > 
						(loadedPackages indexOf: 'Project-Core-anon.1').
	self assert: (loadedPackages indexOf: 'Project-Tests-anon.1') >
						(loadedPackages indexOf: 'Example-Tests-anon.5').
	self assert: (loadedPackages indexOf: 'Project-Tests-anon.1') >
						(loadedPackages indexOf: 'Example-AddOnTests-anon.1').
