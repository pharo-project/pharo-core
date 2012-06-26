ansi gettable
do: aBlock
	[self atEnd] whileFalse: [aBlock value: self next]