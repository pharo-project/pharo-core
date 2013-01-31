actions
listConfigurations
	"List possible configurations of the given repository"
	
	| configurations |
	
	configurations := self loadConfigurationNames.
	configurations ifEmpty: [ ^ self errorNoConfigurationsFound ].
	self printConfigurations: configurations.
	
	^ self exitSuccess