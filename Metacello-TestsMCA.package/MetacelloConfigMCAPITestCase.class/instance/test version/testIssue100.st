testIssue100
	"Issue 100:	last block wins when there are duplicate attribute blocks"

	| project version repositoryDescriptions |
	project := self project.

	version := project version: '1.2.4-baseline'.
	self assert: version blessing = #baseline.
	repositoryDescriptions := version spec repositorySpecs collect: [:repoSpec | repoSpec description ].
	self assert: repositoryDescriptions size = 2.
	self assert: (repositoryDescriptions includes: 'http://www.example.com/aa').
	self assert: (repositoryDescriptions includes: 'http://www.example.com/ab').

	version := project version: '1.2.4'.
	self assert: version blessing = #baseline.
	repositoryDescriptions := version spec repositorySpecs collect: [:repoSpec | repoSpec description ].
	self assert: repositoryDescriptions size = 3.
	self assert: (repositoryDescriptions includes: 'http://www.example.com/aa').
	self assert: (repositoryDescriptions includes: 'http://www.example.com/ab').
	self assert: (repositoryDescriptions includes: 'http://www.example.com/ac').
