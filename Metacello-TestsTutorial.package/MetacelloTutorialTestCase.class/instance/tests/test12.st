test12
	| project versionSpec |
	project := self project.

	versionSpec := (project version: '1.2') spec.
	self assert: (versionSpec packages map at: 'Example-Core') preLoadDoIt value == #preloadForCore.
	self assert: (versionSpec packages map at: 'Example-Core') postLoadDoIt value == #postloadForCore:package:.

	(project version: '1.2') load "execute without error"