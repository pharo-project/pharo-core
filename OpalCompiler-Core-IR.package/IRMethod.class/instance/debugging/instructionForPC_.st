instructionForPC: aPC

	self compiledMethod. "generates the compiledMethod and optimize the ir. 
	Removes the side-effect of optimizing the IR while looking for instruction, 
	which results in incorrect found instruction"
	
	0 to: -3 by: -1 do: [ :off |
		(self firstInstructionMatching: [:ir | ir bytecodeOffset = (aPC - off) ]) ifNotNil: [:it |^it]]
	