preamble
	| preamble |
	preamble := OrderedCollection new.
	self setupTable.
	plugins do: [ :plugin | (reifications includes: plugin class key) ifTrue: [   preamble add: (plugin preamble: node)] ].
	^preamble