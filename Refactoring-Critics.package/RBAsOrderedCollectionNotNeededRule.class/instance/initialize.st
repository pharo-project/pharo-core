initialization
initialize
	super initialize.
	self matcher
		matchesAnyOf: #(
			'`@node addAll: `{ :node | node isMessage and: [ #(asOrderedCollection asArray) includes: node selector ] }'
			'`@node withAll: `{ :node | node isMessage and: [ #(asOrderedCollection asArray) includes: node selector ] }' )
		do: [ :node :answer | node ]