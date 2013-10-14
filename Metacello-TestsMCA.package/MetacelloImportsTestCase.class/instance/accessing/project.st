project

	| constructor project |
	"Construct Metacello project"
	constructor := MetacelloVersionConstructor on: self.
	project := constructor project.
	project loader: MetacelloNullRecordingMCSpecLoader new.
	^project