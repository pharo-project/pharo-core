writesSlot: aSlot
	self flag: #TBD.
	self ast nodesDo: [ :node | 
		node isVariable and: [
			node isInstance and: [ 
				(node binding slot ==  aSlot)
					 ifTrue: [^true]]]]. 
	^false
	