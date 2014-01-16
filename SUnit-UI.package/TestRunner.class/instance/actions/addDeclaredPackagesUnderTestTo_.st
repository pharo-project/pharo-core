addDeclaredPackagesUnderTestTo: packages 
	classesSelected do: 
		[ :class | 
		(class class includesSelector: #packageNamesUnderTest) ifTrue: 
			[ class packageNamesUnderTest do: [ :name | packages add: (RPackage organizer packageNamed: name) ] ] ]