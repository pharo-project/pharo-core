matchingFilter: anItem
	((anItem children collect: [ :it | self matchingFilter: it ]) reject: #isNil)
		ifNotEmpty: [ :coll | 
			^ (self newStaticItemFrom: anItem)
				children: coll asArray;
				dataSource: anItem dataSource;
				expand;
				yourself ].
	^ (pattern matchesIn: anItem asString) ifEmpty: [ nil ] ifNotEmpty: [ self newStaticItemFrom: anItem ]