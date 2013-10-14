projectSourceString

	^'project
	| constructor |
	project := MetacelloMCProject new.
	project projectAttributes: MetacelloConfigurationResource projectAttributes.
	MetacelloVersionConstructor on: self project: project.
	project loadType: #linear.
	^project
'