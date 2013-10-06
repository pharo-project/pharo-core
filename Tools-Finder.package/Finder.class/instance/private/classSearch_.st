classSearch: aSelectBlock
	| result |
	result := OrderedCollection new.
	self packagesSelection
		do: [ :class | 
			(aSelectBlock value: class)
				ifTrue: [ result add: class ] ]
		displayingProgress: [ :aClass | aClass name ].
	^ result