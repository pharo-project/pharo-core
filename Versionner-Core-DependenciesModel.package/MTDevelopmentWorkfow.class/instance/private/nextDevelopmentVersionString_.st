nextDevelopmentVersionString: aDevelopmentVersionString
	| versionNumber lastPointIndex |
	versionNumber := self developmentVersionNumber: aDevelopmentVersionString.
	lastPointIndex := versionNumber 
						lastIndexOf: $. 
						ifAbsent: [ nil ].
	^ lastPointIndex 
		ifNil: [ versionNumber + 1 ]
		ifNotNil: [ | newMinorVersion |
				newMinorVersion := (versionNumber allButFirst: lastPointIndex) asInteger + 1.
				(versionNumber  copyFrom: 1 to: lastPointIndex) , (newMinorVersion asString) ]
