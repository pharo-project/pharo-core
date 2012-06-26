private accessing
allPackages
	| excluded allPackages |
	
	excluded := #('ConfigurationOf*' 'Metacello-*' 'ScriptLoader*' 'Fuel*').
	^((MCPackage allInstances 
		collect: #name)
		reject: [ :eachName |  excluded anySatisfy:  [ :eachPattern | eachPattern match: eachName ] ])
		sort: [ :a :b | a < b ].	