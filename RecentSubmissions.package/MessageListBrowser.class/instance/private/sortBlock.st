sortBlock

	self model isSortedByDateAscending
		ifTrue: [ ^  [:a :b | a < b ]].
	self model isSortedByDateDescending
		ifTrue: [ ^  [:a :b | b < a ]].
	^ [:a :b | a asString < b asString ]