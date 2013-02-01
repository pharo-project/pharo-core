private
listForSearching

	^ self getListSelector
		ifNotNil: [ self getList ]
		ifNil: [ getItemAtIndexSelector
				ifNil: [ #() ]
				ifNotNil: [ 
					(1 to: self getListSize) collect: [:index | self getListItem: index ]]]
			