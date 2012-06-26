new script-update format
newGenerateNewUpdateMethod
	"self new newGenerateNewUpdateMethod"
	
	^'update{1}

	(ConfigurationOfPharo20 project version: ''{1}'') load.
	self postUpdate.
' format: {self currentUpdateVersionNumber}.
