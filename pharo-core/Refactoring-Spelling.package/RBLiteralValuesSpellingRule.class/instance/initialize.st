initialization
initialize
	super initialize.
	matcher := RBParseTreeSearcher new.
	matcher 
		matches: '`#literal'
		do: [ :node :answer | self add: node value to: answer ]