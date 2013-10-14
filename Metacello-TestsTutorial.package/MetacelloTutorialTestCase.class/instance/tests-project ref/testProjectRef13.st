testProjectRef13

	| project loadedPackages loader platformPackage |
	project := self projectRefProject.

	loader := (project version: '1.3') load.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 9.
	self assert: (loadedPackages indexOf: 'Example-Core-anon.17') > 0.
	self assert: (loadedPackages indexOf: 'Example-AddOn-anon.1') >
						(loadedPackages indexOf: 'Example-Core-anon.17').
	self assert: (loadedPackages indexOf: 'Example-AddOnTests-anon.1') >
						(loadedPackages indexOf: 'Example-AddOn-anon.1').
	self assert: (loadedPackages indexOf: 'Example-Tests-anon.6') >
						(loadedPackages indexOf: 'Example-Core-anon.17').
	self assert: (loadedPackages indexOf: 'Example-AddOnTests-anon.1') >
						(loadedPackages indexOf: 'Example-Tests-anon.6').
	platformPackage := loadedPackages detect: [:pkgName | pkgName beginsWith: 'Example-Platform'].
	self assert: (loadedPackages indexOf: 'Example-Tests-anon.6') >
						(loadedPackages indexOf: platformPackage).
	self assert: (loadedPackages indexOf: 'Example-AddOn-anon.1') >
						(loadedPackages indexOf: platformPackage).
	self assert: (loadedPackages indexOf: platformPackage) >
						(loadedPackages indexOf: 'Example-Core-anon.17').


	self assert: (loadedPackages indexOf: 'Project-Core-anon.1') > 
						(loadedPackages indexOf: 'Example-Core-anon.17').
	self assert: (loadedPackages indexOf: 'Project-Core-anon.1') > 
						(loadedPackages indexOf: 'Example-AddOn-anon.1').

	self assert: (loadedPackages indexOf: 'Project-Tests-anon.1') > 
						(loadedPackages indexOf: 'Project-Core-anon.1').
	self assert: (loadedPackages indexOf: 'Project-Tests-anon.1') >
						(loadedPackages indexOf: 'Example-Tests-anon.6').
	self assert: (loadedPackages indexOf: 'Project-Tests-anon.1') >
						(loadedPackages indexOf: 'Example-AddOnTests-anon.1').
