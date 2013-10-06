initialize: aRectangle 
	constantInteger := 15.
	constantString := 'Ruben'.
	constantSymbol := #Symbol.
	constantArray := #(15 16 17 28 ).
	constantBoolean := true.
	typeSuggestingParameter := aRectangle.
	messageSend := Dictionary new.
	messageSend2 := aRectangle origin.
	globalVarKeyword := SortedCollection
				sortBlock: [:a :b | a <= b].
	globalVarKeyword2 := SortedCollection new: 15.
	constantNil := nil.
	complexInit := 15 > 16
				ifTrue: [#Symbol]
				ifFalse: ['String'].
	complexInit2 := Dictionary new: aRectangle origin x. 