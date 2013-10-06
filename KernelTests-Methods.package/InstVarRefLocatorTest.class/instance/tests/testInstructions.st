testInstructions

	

	Object methods do: [:method | | scanner printer end |
		scanner := InstructionStream on: method.
		printer := InstVarRefLocator new.
		end := scanner method endPC.

		[scanner pc <= end] whileTrue: [
			self shouldnt: [printer interpretNextInstructionUsing: scanner] raise: Error.
		].
	].