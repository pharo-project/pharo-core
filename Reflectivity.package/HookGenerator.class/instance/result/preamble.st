preamble
	| preamble |
	preamble := OrderedCollection new.
	self setupTable.
	plugins do: [ :plugin | preamble add: plugin preamble ].
	^preamble