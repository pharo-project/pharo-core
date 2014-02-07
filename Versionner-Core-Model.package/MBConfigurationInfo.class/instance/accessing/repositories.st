repositories
	"Return the repositories associated with the configuration."
	| mcPackage |
	
	(mcPackage := self project projectPackage)
		ifNil: [ ^nil ].
	^ mcPackage workingCopy
		ifNil: [ nil ]
		ifNotNilDo: [ :wc | wc repositoryGroup repositories ]