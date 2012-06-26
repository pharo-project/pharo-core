drag and drop
startDrag: evt 
	|row ddm draggedItem draggedItemMorph |

	dragItemSelector ifNotNil: [ ^self startDragExtended: evt ].
	evt hand hasSubmorphs ifTrue: [^ self]. 
	
	self dragEnabled ifFalse: [^ self].
	ActiveHand anyButtonPressed ifFalse: [ ^self ].
			
	(row := self mouseDownRow)
		ifNil: [ draggedItem := self getListItem: lastNonZeroIndex. "self selection" ]
		ifNotNil: [ draggedItem := self getListItem: row ].
	
	"Here I ensureat least one element is selected "
	ActiveHand anyButtonPressed ifFalse: [ ^self ].
	draggedItem ifNil: [ ^ self ].
	
	self isMultipleSelection
		ifTrue: [ | passengers |
			passengers := self model dragPassengersFor: draggedItem inMorph: self.
			passengers ifNil: [ ^ self ].
			draggedItemMorph := StringMorph contents: (passengers joinUsing: ' ') asStringOrText.
			ddm := TransferMorph withPassenger: passengers from: self ]
		ifFalse: [ | passenger |
			passenger := self model dragPassengerFor: draggedItem inMorph: self.
			passenger ifNil: [ ^ self ].
			draggedItemMorph := StringMorph contents: passenger asStringOrText.
			ddm := TransferMorph withPassenger: passenger from: self ].
		
		
	self mouseDownRow: nil.
	
	ddm dragTransferType: (self model dragTransferTypeForMorph: self).
	
	[evt hand grabMorph: ddm ] ensure: [
										Cursor normal show.
										evt hand releaseMouseFocus: self]