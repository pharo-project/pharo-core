projectWith: projectAttributes

	| project |
	"Construct Metacello project"
	project := MetacelloMCProject new.
	project projectAttributes: projectAttributes.
	MetacelloVersionConstructor on: (Smalltalk at: #MetacelloTestConfigurationOfProjectToolBox) new project: project.
	project loader: MetacelloNullRecordingMCSpecLoader new.
	project loader evalDoits: true.
	^project