testLatestFilter
	| project |
	project := MetacelloVersionQueryLatestVersionConfig new project.

	self assert: (project latestVersionMatching: '*.*') versionString = '1.2'.
	self assert: (project latestVersionMatching: '*.*.*') versionString = '1.1.2'.
	self assert: (project 
		latestVersionMatching: '*.*'
		includedBlessings: #(#development)) versionString = '1.3'.
	self assert: (project 
		latestVersionMatching: '*.*.*'
		includedBlessings: #(#development)) versionString = '1.3.2'.
	self assert: (project 
		latestVersionMatching: '*.*'
		excludedBlessings: #()) versionString = '1.3'.
	self assert: (project 
		latestVersionMatching: '*.?'
		includedBlessings: #(#development)) versionString = '1.3.2'.
	self assert: (project 
		latestVersionMatching: '*.?'
		excludedBlessings: #()) versionString = '1.3.2'.
	self assert: (project latestVersionMatching: '*') = nil
