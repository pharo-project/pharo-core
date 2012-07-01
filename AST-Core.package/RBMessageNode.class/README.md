RBMessageNode is an AST node that represents a message send.

Instance Variables:
	arguments	<SequenceableCollection of: RBValueNode>	our argument nodes
	receiver	<RBValueNode>	the receiver's node
	selector	<Symbol | nil>	the selector we're sending (cached)
	selectorParts	<SequenceableCollection of: RBValueToken>	the tokens for each keyword

