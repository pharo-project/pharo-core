utility
configurationClasses
    "Return a set of the Metacello configuration classes that have been loaded into the image."

    <apiDocumentation>
	self flag: 'more work needed about MetacelloProjectRegistration'.
    ^ Array streamContents: [ :s|
		SystemNavigation default allClassesDo: [ :cls|
			(cls name beginsWith: 'ConfigurationOf')
				ifTrue: [ s nextPut: cls ]]]