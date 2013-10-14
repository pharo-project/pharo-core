test07a

	| project versionSpec loadedPackages version loader |
	project := self project.

	version := project version: '0.7-baseline'.
	self assert: version blessing == #baseline.
	versionSpec := version spec.
	self assert: (versionSpec packages map includesKey: 'Example-Core').
	self assert: (versionSpec packages map at: 'Example-Core') file = 'Example-Core'.
	self assert: (versionSpec packages map at: 'Example-Tests') file = 'Example-Tests'.
	self assert: (versionSpec packages map at: 'Example-AddOn') file = 'Example-AddOn'.
	self assert: versionSpec packages map keys size = 3.
	self assert: (versionSpec repositories map at: 'http://www.example.com/Example') description = 'http://www.example.com/Example'.

	loader := version load.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 3.
	self assert: (loadedPackages indexOf: 'Example-Core') > 0.
	self assert: (loadedPackages indexOf: 'Example-Tests') >
						(loadedPackages indexOf: 'Example-Core').
	self assert: (loadedPackages indexOf: 'Example-AddOn') >
						(loadedPackages indexOf: 'Example-Core').
