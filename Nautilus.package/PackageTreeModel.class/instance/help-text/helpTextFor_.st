helpTextFor: aRPackage 
	
	"We try to get a configuration class with the same name of the package"
	"If the package has subnames with dashes, we take only the first part"
	| configuration possibleConfigurationName |
	possibleConfigurationName := 'ConfigurationOf', (aRPackage name subStrings: '-') first.
	configuration := possibleConfigurationName asSymbol asClassIfAbsent: [ ^nil ].
	
	"If the configuration has a catalog description we show it, if not we don't"
	(configuration respondsTo: #catalogDescription)
		ifFalse: [ ^ nil ].
	^configuration catalogDescription.