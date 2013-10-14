testPackagePreloadPostload
	| project versionSpec version |
	project := self project.

	versionSpec := (version := project version: '1.0-baseline') spec.
	self assert: (versionSpec packages map at: 'Example-Core') preLoadDoIt value == #preloadForCore.
	self assert: (versionSpec packages map at: 'Example-Core') postLoadDoIt value == #postloadForCore:package:.
	self deny: preLoadExecuted.
	self deny: postLoadExecuted.
	version load.
	self assert: preLoadExecuted.
	self assert: postLoadExecuted.