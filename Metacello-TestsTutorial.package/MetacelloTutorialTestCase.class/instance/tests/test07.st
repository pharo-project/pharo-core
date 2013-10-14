test07

	| project versionSpec loadedPackages version loader |
	project := self project.

	version := project version: '0.7'.
	self assert: version blessing == #baseline.
	versionSpec := version spec.
	self assert: (versionSpec packages map includesKey: 'Example-Core').
	self assert: (versionSpec packages map at: 'Example-Core') file = 'Example-Core-anon.12'.
	self assert: (versionSpec packages map at: 'Example-Tests') file = 'Example-Tests-anon.3'.
	self assert: (versionSpec packages map at: 'Example-AddOn') file = 'Example-AddOn-anon.1'.
	self assert: versionSpec packages map keys size = 3.
	self assert: (versionSpec repositories map at: 'http://www.example.com/Example') description = 'http://www.example.com/Example'.

	loader := version load.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 3.
	self assert: (loadedPackages indexOf: 'Example-Core-anon.12') > 0.
	self assert: (loadedPackages indexOf: 'Example-Tests-anon.3') >
						(loadedPackages indexOf: 'Example-Core-anon.12').
	self assert: (loadedPackages indexOf: 'Example-AddOn-anon.1') >
						(loadedPackages indexOf: 'Example-Core-anon.12').
