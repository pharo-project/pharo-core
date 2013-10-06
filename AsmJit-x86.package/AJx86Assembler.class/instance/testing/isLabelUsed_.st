isLabelUsed: aLabel
	| used |
	used := false.
	instructions do: [:instr |
		used := used or: [instr isLabelUsed: aLabel ] ].
	^ used