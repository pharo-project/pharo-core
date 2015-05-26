convertToDoLoop
	"If statements contains the pattern
		var := startExpr.
		[var <= limit] whileTrue: [...statements... var := var + incConst]
	then replace this by
		startExpr to: limit by: incConst do: [:var | ...statements...]"
	| leaveOnStack initStmt toDoStmt limitStmt |
	leaveOnStack := false.
	(stack notEmpty
	 and: [stack last isAssignment])
		ifTrue:
			[initStmt := stack last.
			 (toDoStmt := statements last toDoFromWhileWithInit: initStmt) ifNil:
				[^self].
			 stack removeLast.
			 statements removeLast; addLast: toDoStmt.
			 leaveOnStack := true]
		ifFalse: [ 
			statements size < 2 ifTrue: [^ self].
			initStmt := statements at: statements size-1. 
			(toDoStmt := statements last toDoFromWhileWithInit: initStmt)
				ifNil: [^ self].
			statements removeLast; removeLast; addLast: toDoStmt ].
	"Attempt further conversion of the pattern
		limitVar := limitExpr.
		startExpr to: limitVar by: incConst do: [:var | ...statements...]
	to
		startExpr to: limitExpr by: incConst do: [:var | ...statements...]"
	statements size < 2 ifTrue: [
		leaveOnStack ifTrue: [ stack addLast: statements removeLast ].
			 ^ self ] .
	limitStmt := statements last.
	((limitStmt isMemberOf: AssignmentNode)
		and: [limitStmt variable isTemp
		and: [limitStmt variable == toDoStmt arguments first ]]) ifFalse:
			[limitStmt := statements at: statements size-1.
			((limitStmt isMemberOf: AssignmentNode)
				and: [limitStmt variable isTemp
				and: [limitStmt variable == toDoStmt arguments first]]) ifFalse:
					[leaveOnStack ifTrue:
						[stack addLast: statements removeLast].
					^self]].
	(self blockScopeRefersOnlyOnceToTemp: limitStmt variable fieldOffset)
		ifFalse: [^ self].
	toDoStmt arguments at: 1 put: limitStmt value.
	tempVars := tempVars asOrderedCollection.
	statements removeLast; removeLast; addLast: toDoStmt.

