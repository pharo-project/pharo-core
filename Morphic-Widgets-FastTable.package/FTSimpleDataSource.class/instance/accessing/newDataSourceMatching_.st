newDataSourceMatching: aRegex
	| newElements |
	newElements := Array withAll: (elements select: [ :each | (aRegex matchesIn: each asString) notEmpty ]).
	^ self class new elements: newElements