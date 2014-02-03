unwrap: aCollection

	| unwrapCollection rgobject |
	
	unwrapCollection := OrderedCollection new.
	aCollection
		do: [ :each | 
			rgobject := (Smalltalk globals at: each first first) manifestReadOn:  (each first at: 2).
			(rgobject isClass and: [ rgobject  realClass notNil ])
				ifTrue: [ unwrapCollection add: rgobject realClass ].
			(rgobject isMethod and: [ rgobject method notNil ])
				ifTrue: [ unwrapCollection add: rgobject method ] ].
	^ unwrapCollection