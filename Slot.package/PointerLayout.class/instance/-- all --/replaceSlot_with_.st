replaceSlot: oldSlot with: newSlot
	"used by the SlotWrapper to insert itself"
	| oldSlotIndex |
	oldSlotIndex := self slotScope indexOf: oldSlot.
	self slotScope at: oldSlotIndex put: newSlot.	