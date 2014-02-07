testInitialization
	| conf |
	self should: [ MBConfigurationInfo new ] raise: Error.
	self shouldnt: [ conf := MBConfigurationInfo configurationClass: ConfigurationOfVersionner ] raise: Error.
	self assert: conf name = 'ConfigurationOfVersionner'