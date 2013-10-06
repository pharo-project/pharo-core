reshapeFrom: oldScope to: newParentLayout
	| newScope |
	newScope := self slotScope 
		rebase: oldScope 
		to: newParentLayout slotScope.
	^ newParentLayout extendAgain: self with: newScope.