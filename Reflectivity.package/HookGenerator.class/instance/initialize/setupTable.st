setupTable
	"Here we set up two tables: for every reification requested, we put the Reifier Plugin into 'table'. If a second
	 reification is requested that requires complex code, we move the reification code into the preamble's 'ptable'
	 and put an tempVarRead into the main table instead
	 Later we just access 'table at: symbol' to get code for a requested reification and generate a preamble that fills
	 those variable at the beginning of the link's code"

	| reification |
	reification := OrderedCollection new.
	reification addAll: link arguments. 
	link metaObject isSymbol ifTrue: [reification add: link metaObject].
	link condition ifNotNil: [reification addAll: (self reificationsFor: link condition)].
	reification do: [:symbol |
		(plugins at: symbol) optimize ifTrue: [ "don't bother to optimize one-bytecode reifications" 
			((table includesKey: symbol) and: [(ptable includesKey: symbol) not]) ifTrue: [ | var |  "we already saw this one, use temp instead"
				var := RBVariableNode named: ('gphhhddd', symbol).
				ptable at: symbol put: (RBAssignmentNode variable: var
				  										 value: (table at: symbol)).
				node methodNode body addTemporaryNamed: 'gphhhddd', symbol.
				table at: symbol put: var.
			].
		].
		table at: symbol ifAbsentPut: [(plugins at: symbol) perform: self selectorForNode].
	]