matchingFilter: anItem
	anItem isExpanded
		ifTrue:
			[ ((anItem children collect: [ :each | self matchingFilter: each ]) reject: #isNil)
				ifNotEmpty:
					[ :coll | 
					^ (self newStaticItemFrom: anItem)
						children: coll asArray;
						expand;
						yourself ] ].
	^ (pattern matchesIn: anItem asString)
		ifNotEmpty: [ anItem isExpanded
				ifTrue: [ self newStaticItemFrom: anItem ]
				ifFalse: [ anItem ] ]
		ifEmpty: [ nil ]