drag and drop
startDragExtended: evt
	"This method was defined in PluggableListMorphPlus (a subclass that got merged)" 
	
	dragItemSelector ifNil: [^self].
	evt hand hasSubmorphs ifTrue: [^ self].
	[ | dragIndex draggedItem ddm |
	(self dragEnabled and: [model okToChange]) ifFalse: [^ self].
	dragIndex := self rowAtLocation: evt position.
	dragIndex = 0 ifTrue:[^self].
	draggedItem := model perform: dragItemSelector with: dragIndex.
	draggedItem ifNil:[^self].
	self mouseDownRow: nil.
	ddm := TransferMorph withPassenger: draggedItem from: self.
	ddm dragTransferType: #dragTransfer.
	evt hand grabMorph: ddm]
		ensure: [Cursor normal show.
			evt hand newMouseFocus: self]