addAll: aKeyedCollection
	"This method can accept any collection of associations, not just Dictionaries, because is uses
	#associationsDo rather than #keysAndValuesDo:, and #associationsDo: has a default implementation in
	Collection that just sends #do:. Since this is an order-preserving dictionary, you should be able to add
	multiple associations at once from a SequenceableCollection and have their order be preserved."

	aKeyedCollection associationsDo: [:each | self add: each].
	^ aKeyedCollection.