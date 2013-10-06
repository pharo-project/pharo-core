instructionForPC: aPC
	0 to: -3 by: -1 do: [ :off |
		(self firstInstructionMatching: [:ir | ir bytecodeOffset = (aPC - off) ]) ifNotNil: [:it |^it]]
	