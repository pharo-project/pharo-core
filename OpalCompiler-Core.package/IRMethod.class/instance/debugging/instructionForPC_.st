instructionForPC: aPC
"generates the compiledMethod and optimize the ir. 
	Removes the side-effect of optimizing the IR while looking for instruction, 
	which results in incorrect found instruction"
	self compiledMethod.
	"For a given PC, the actual instruction may start N bytes ahead, specifically startPC of blocks is *after* the bytecode that creates the block. N = 3 must be revisited when bytecode sets are extended"
	0 to: 3 do: [ :off |
		(self firstInstructionMatching: [:ir | ir bytecodeOffset = (aPC - off) ]) ifNotNil: [:it |^it]]
	