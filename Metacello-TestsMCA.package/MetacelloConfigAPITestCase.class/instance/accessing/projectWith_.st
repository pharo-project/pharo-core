projectWith: projectAttributes

	| project |
	"Construct Metacello project"
	project := MetacelloMCProject new.
	project projectAttributes: projectAttributes.
	MetacelloVersionConstructor on: self project: project.
	project loader: MetacelloNullRecordingMCSpecLoader new.
	project loader evalDoits: true.
	^project