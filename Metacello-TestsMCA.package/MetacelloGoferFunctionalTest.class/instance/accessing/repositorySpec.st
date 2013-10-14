repositorySpec

	| project version |
	project := self project.
	version := project version: '1.0-baseline'.
	^version spec repositorySpecs first.
