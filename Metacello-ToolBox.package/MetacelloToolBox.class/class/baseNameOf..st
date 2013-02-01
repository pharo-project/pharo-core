utility
baseNameOf: configurationClassName
	"Return the baseName for the given configuration class name."

	<apiDocumentation>
	^ (configurationClassName indexOfSubCollection: 'ConfigurationOf') = 0
		ifTrue: [ configurationClassName ]
		ifFalse: [ configurationClassName copyFrom: ('ConfigurationOf' size + 1) to: configurationClassName size]