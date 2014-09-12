initialize

	super initialize.

	listHolder := OrderedCollection new asValueHolder.
	selectionHolder := Object selectionReactiveVariable.
	
	listHolder whenChangedDo: [ 
					self changed: #getList.
					self changed: #getIconFor:.
					self internalResetSelection.].
				
	selectionHolder whenChangedDo: [ self changed: #getIndex ].
	displayBlock := [ :model :item | item label ] asValueHolder.
	iconHolder := [ :model :item | item icon ] asValueHolder.
	
	self whenSelectedItemChanged: [:item | item value ]