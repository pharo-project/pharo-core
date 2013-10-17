methodSearch: aSelectBlock 
	| result | 
	result := OrderedCollection new.
	
	self packagesSelection 
		do: [ :class |
			class methodsDo: [ :method | 
				(aSelectBlock value: method) ifTrue: [ result add: method ]].
			class classSide methodsDo: [ :method | 
				(aSelectBlock value: method) ifTrue: [ result add: method ]]]
		displayingProgress: [ :aClass | aClass name ].
		
	^ result