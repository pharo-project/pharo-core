as yet unclassified
addPackagesMatching: aString to: aSet
	| regex |
	
	[ regex := aString asRegex ] 
		on: Error do: [ ].
	regex ifNotNil: [ ^ self addPackagesMatchingRegex: regex to: aSet ].
	
	(aString includes: $*)
		ifTrue: [ ^ self addPackagesMatchingGlob: aString to: aSet ].
	
	"exact match"
	(RPackage organizer includesPackageNamed: aString)
		ifTrue: [ aSet add: aString ]