prohibitsRex
	"Answer true if this register cannot be used in any instruction that has a REX prefix.
	Of the general-purpose registers, this is true only of SPL, BPL, SIL, DIL."

	^ (code & RegProhibitsRexMask) ~~ 0