accessing
variablesMappingFor: aClass

	| variables |
	variables := FLVariablesMapping materializing: aClass from: self.
	
	migrations 
		select: [ :m | m targetClass == aClass ]
		thenDo: [ :m | m applyTo: variables ].
		
	^ variables
	