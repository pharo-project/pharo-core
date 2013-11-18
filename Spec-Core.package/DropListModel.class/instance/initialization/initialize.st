initialize

	super initialize.

	listHolder := OrderedCollection new asValueHolder.
	selectionHolder := SelectionValueHolder new.
	
	listHolder whenChangedDo: [ 
					self changed: #getList.
					self internalResetSelection. ].
				
	selectionHolder whenChangedDo: [ self changed: #getIndex ].
	displayBlock := [:item | item asString ] asValueHolder.
	self whenSelectedItemChanged: [:item | item value ]