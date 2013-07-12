actions
browseConfiguration
	self hasSelection ifFalse: [ ^self ].
	self selectedConfigurationClass browse