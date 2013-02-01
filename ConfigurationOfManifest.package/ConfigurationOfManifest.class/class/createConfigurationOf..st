private
createConfigurationOf: packageString

	(MetacelloConfigTemplate duplicateClassWithNewName: ('ConfigurationOf', packageString) asSymbol)
        category: ('ConfigurationOf', packageString).