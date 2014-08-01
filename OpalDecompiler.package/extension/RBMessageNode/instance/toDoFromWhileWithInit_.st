toDoFromWhileWithInit: initStmt
	"Return nil, or a to:do: expression equivalent to this whileTrue:"
	| variable increment limit toDoBlock body test  |
	(selector == #whileTrue:
	 and: [initStmt isAssignment
	 and: [initStmt variable isMemberOf: RBTemporaryNode]]) ifFalse:
		[^nil].
	body := arguments last statements.
	variable := initStmt variable.
	increment := body last toDoIncrement: variable.
	(increment == nil
	 or: [receiver statements size ~= 1]) ifTrue:
		[^nil].
	test := receiver statements first.
	"Note: test chould really be checked that <= or >= comparison
	jibes with the sign of the (constant) increment"
	(test isMessage
	 and: [(limit := test toDoLimit: variable) notNil]) ifFalse:
		[^nil].
	"The block must not overwrite the limit"
	(limit isVariable and: [body anySatisfy: [:e | e isAssignment and: [e variable = limit]]])
		ifTrue: [^nil]. 
	toDoBlock := RBBlockNode body: (RBSequenceNode statements: body allButLast).
	toDoBlock arguments: (Array with: variable).
	variable propertyAt: #hidden put: true.
	increment value = 1 ifTrue: [
		^ RBMessageNode 
			receiver: initStmt value
			selector: #to:do:
			arguments: (Array with: limit with: toDoBlock)].
	^ RBMessageNode 
		receiver: initStmt value
		selector: #to:by:do:
		arguments: (Array with: limit with: increment with: toDoBlock)