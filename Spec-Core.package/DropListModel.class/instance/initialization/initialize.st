initialize

	super initialize.

	listHolder := OrderedCollection new asReactiveVariable.
	selectionHolder := Object selectionReactiveVariable.
	
	listHolder whenChangedDo: [ 
					self changed: #getList.
					self changed: #getIconFor:.
					self internalResetSelection.].
				
	selectionHolder whenChangedDo: [ self changed: #getIndex ].
	displayBlock := [ :model :item | item label ] asReactiveVariable.
	iconHolder := [ :model :item | item icon ] asReactiveVariable.
	
	self whenSelectedItemChanged: [:item | item value ]