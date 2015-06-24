startDrag: event
	| passengers transferMorph |

	event hand hasSubmorphs ifTrue: [^ self]. 
	self dragEnabled ifFalse: [^ self].
	"Here I ensure at least one element is selected "
	ActiveHand anyButtonPressed ifFalse: [ ^self ].
	self hasSelection ifFalse: [ ^ self ].
			
	passengers := self selectedRowIndexes collect: [ :each | self dataSource elementAt: each ].
	transferMorph := self dataSource transferFor: passengers from: self.
	transferMorph align: transferMorph draggedMorph bottomLeft with: event position.
	transferMorph dragTransferType: self dataSource dragTransferType.
	
	[ event hand grabMorph: transferMorph ] 
	ensure: [
		Cursor normal show.
		event hand releaseMouseFocus: self ] 