preamble
	| preamble |
	preamble := OrderedCollection new.
	self setupTable.
	plugins do: [ :plugin | (reifications includes: plugin class key) ifTrue: [   preamble addAll: (plugin preamble: node)] ].
	^preamble