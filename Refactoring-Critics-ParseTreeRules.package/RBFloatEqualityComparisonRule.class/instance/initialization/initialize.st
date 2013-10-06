initialize
	super initialize.
	self matcher 
		matchesAnyOf: #(
			'`{ :node | node isLiteral and: [ node value isFloat ] } = `@expr'
			'`{ :node | node isLiteral and: [ node value isFloat ] } ~= `@expr'
			'`@expr = `{ :node | node isLiteral and: [ node value isFloat ] }'
			'`@expr ~= `{ :node | node isLiteral and: [ node value isFloat ] }' )
		do: [ :node :answer | node ]