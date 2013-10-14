test11Blessing
	| project |
	project := self project.

	self assert: ((project version: '1.1') blessing) == #development.
	self assert: ((project version: '0.5') blessing) == #release.
	self assert: ((project version: '1.0-baseline') blessing) == #baseline.
	self assert: (project latestVersion: #release) versionString = '0.6'. 
