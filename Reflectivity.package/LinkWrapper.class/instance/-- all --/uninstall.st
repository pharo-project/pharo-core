uninstall
	| slotIndex |
	slotIndex := self definingClass layout slotScope indexOf: self.
	self definingClass layout slotScope at: slotIndex + 1 put: self slot.	
	self slot usingMethods do: #recompile.
