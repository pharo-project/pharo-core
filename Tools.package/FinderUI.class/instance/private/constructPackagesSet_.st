constructPackagesSet: aList
	| result |
	result := OrderedCollection new.
	'Building Packages'
	 	displayProgressFrom: 0 to: aList size
		during:[ :bar | 
			aList doWithIndex: [:each :i | 
				bar current: i.
				result add: each category]].
	
		^(result reject: [:each | each isNil]) asSet asSortedCollection: [:a :b | a<b].