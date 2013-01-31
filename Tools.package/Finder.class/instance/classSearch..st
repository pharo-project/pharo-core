private
classSearch: aSelectBlock 
	| result | 
	result := OrderedCollection new.
	
	self packagesSelection 
		do: [ :class |
			(aSelectBlock value: class) ifTrue: [ 
				result add: class; add: class classSide ]]
		displayingProgress: [ :aClass | aClass name ].
		
	^ result