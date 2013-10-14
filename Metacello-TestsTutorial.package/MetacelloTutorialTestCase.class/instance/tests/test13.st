test13

	| project versionSpec loadedPackages version platformPackage loader |
	project := self project.

	version := project version: '1.3'.
	self assert: version blessing == #development.
	versionSpec := version spec.
	self assert: (versionSpec repositories map at: 'http://www.example.com/Example') description = 'http://www.example.com/Example'.

	loader := version load: 'ALL'.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 5.
	self assert: (loadedPackages indexOf: 'Example-Core-anon.17') > 0.
	self assert: (loadedPackages indexOf: 'Example-Tests-anon.6') >
						(loadedPackages indexOf: 'Example-Core-anon.17').
	self assert: (loadedPackages indexOf: 'Example-AddOn-anon.1') >
						(loadedPackages indexOf: 'Example-Core-anon.17').
	self assert: (loadedPackages indexOf: 'Example-AddOnTests-anon.1') >
						(loadedPackages indexOf: 'Example-AddOn-anon.1').
	self assert: (loadedPackages indexOf: 'Example-AddOnTests-anon.1') >
						(loadedPackages indexOf: 'Example-Tests-anon.6').
	platformPackage := loadedPackages detect: [:pkgName | pkgName beginsWith: 'Example-Platform'].
	self assert: (loadedPackages indexOf: 'Example-Tests-anon.6') >
						(loadedPackages indexOf: platformPackage).
	self assert: (loadedPackages indexOf: 'Example-AddOn-anon.1') >
						(loadedPackages indexOf: platformPackage).
	self assert: (loadedPackages indexOf: platformPackage) >
						(loadedPackages indexOf: 'Example-Core-anon.17').
