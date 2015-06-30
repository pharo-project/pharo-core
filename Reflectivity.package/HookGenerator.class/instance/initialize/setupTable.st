setupTable
	"Here we set up two tables: for every reification requested, we put the Reifier Plugin into 'table'. If a second
	 reification is requested that requires complex code, we move the reification code into the preamble's 'ptable'
	 and put an tempVarRead into the main table instead
	 Later we just access 'table at: symbol' to get code for a requested reification and generate a preamble that fills
	 those variable at the beginning of the link's code"

	reifications := link allReifications.
	reifications do: [:symbol |
		table at: symbol ifAbsentPut: [(plugins at: symbol) perform: self selectorForNode].
	]