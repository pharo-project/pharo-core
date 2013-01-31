private
matches: aLoadableReference
	"does Monticello-style #versionInfoFromVersionNamed: matching"
	
	| pFilename |
	(((pFilename := self packageFilename) == nil) or: [ self name = self packageFilename] ) ifTrue: [ ^super matches: aLoadableReference ].
	^aLoadableReference name beginsWith: pFilename 
