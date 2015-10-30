newDataSourceMatching: aRegex
	| newItems |
	newItems :=  items class withAll: (items collect: [ :coll | coll select: [ :each | (aRegex matchesIn: each asString) notEmpty ] ]).
	^ self class new items: newItems