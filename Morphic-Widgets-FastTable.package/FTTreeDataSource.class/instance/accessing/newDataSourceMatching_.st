newDataSourceMatching: aRegex
	| newRoots |
	self flag: #todo.	"Need improvement."
	newRoots := Array withAll: ((items select: [ :each | (aRegex matchesIn: each asString) notEmpty ]) collect: [ :item | item data ]).
	^ self class roots: newRoots children: [ :data :coll :level | (self childrenBlock cull: data cull: coll cull: level) select: [ :each | (aRegex matchesIn: each asString) notEmpty ] ]