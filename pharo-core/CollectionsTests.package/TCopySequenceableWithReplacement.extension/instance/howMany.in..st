tests - fixture
howMany: subCollection in: collection
" return an integer representing how many time 'subCollection'  appears in 'collection'  "
	| tmp nTime |
	tmp:= collection.
	nTime:= 0.
	
	[tmp isEmpty ]whileFalse:
		[
		(tmp beginsWith: subCollection)
			ifTrue: [ 	
				nTime := nTime + 1.
				1 to: subCollection size do: [:i | tmp := tmp copyWithoutFirst.]
				]
			ifFalse: [tmp := tmp copyWithoutFirst.]
		 ].
	
	^ nTime.
	