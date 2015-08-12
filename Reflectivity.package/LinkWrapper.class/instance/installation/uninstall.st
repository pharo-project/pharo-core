uninstall
	| slotIndex |
	self usingMethods do: #removeLink.
	slotIndex := self definingClass layout slotScope indexOf: self.
	self definingClass layout slotScope at: slotIndex + 1 put: self slot.	
	