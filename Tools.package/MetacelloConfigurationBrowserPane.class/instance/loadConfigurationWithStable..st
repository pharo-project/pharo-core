private
loadConfigurationWithStable: loadStable
	"Load the configuration and (depending on the flag) load the latest stable version"
	| configName |
	self hasSelection ifFalse: [ ^self ].
	configName := self selectedConfigurationName.
	Gofer new
		url: self repository; 
		package: configName;
		load.
	loadStable ifFalse: [^self].
	
	"Now load the latest stable version"
	self selectedConfigurationClass project stableVersion load.