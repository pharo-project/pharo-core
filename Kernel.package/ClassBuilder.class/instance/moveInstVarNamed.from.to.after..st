public
moveInstVarNamed: instVarName from: srcClass to: dstClass after: prevInstVarName
	"Move the given instVar from srcClass to dstClass"
	(srcClass instVarNames includes: instVarName)
		ifFalse:[^self error: instVarName,' is not an instance variable of ', srcClass name].
	(prevInstVarName isNil or:[dstClass instVarNames includes: prevInstVarName])
		ifFalse:[^self error: prevInstVarName, 'is not an instance variable of', dstClass name].
	(srcClass inheritsFrom: dstClass) ifTrue:[
		"Move the instvar up the hierarchy."
		(self validateClass: srcClass forMoving: instVarName upTo: dstClass)
			ifFalse:[^false].
	].
	(dstClass inheritsFrom: srcClass) ifTrue:[
		"Move the instvar down the hierarchy"
		(self validateClass: srcClass forMoving: instVarName downTo: dstClass)
			ifFalse:[^false].
	].
	^self silentlyMoveInstVarNamed: instVarName from: srcClass to: dstClass after: prevInstVarName