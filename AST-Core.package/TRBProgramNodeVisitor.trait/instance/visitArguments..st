visiting rb nodes
visitArguments: aNodeCollection 
	^aNodeCollection do: [:each | self visitArgument: each]