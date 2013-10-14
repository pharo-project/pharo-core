testPackageRepository
	| project versionSpec version pkg |
	project := self project.

	versionSpec := (version := project version: '1.0.5-baseline') spec.
	pkg := version packageNamed: 'Example-Core'.
	self assert: pkg repositorySpecs first description = 'http://www.example.com/ob'