test10b

	| project versionSpec loadedPackages version loader |
	project := self project.

	version := project version: '1.0'.
	self assert: version blessing == #baseline.
	versionSpec := version spec.
	self assert: (versionSpec repositories map at: 'http://www.example.com/Example') description = 'http://www.example.com/Example'.

	loader := version load: 'ALL'.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 4.
	self assert: (loadedPackages indexOf: 'Example-Core-anon.14') > 0.
	self assert: (loadedPackages indexOf: 'Example-Tests-anon.3') >
						(loadedPackages indexOf: 'Example-Core-anon.14').
	self assert: (loadedPackages indexOf: 'Example-AddOn-anon.1') >
						(loadedPackages indexOf: 'Example-Core-anon.14').
	self assert: (loadedPackages indexOf: 'Example-AddOnTests-anon.1') >
						(loadedPackages indexOf: 'Example-AddOn-anon.1').
	self assert: (loadedPackages indexOf: 'Example-AddOnTests-anon.1') >
						(loadedPackages indexOf: 'Example-Tests-anon.3').
