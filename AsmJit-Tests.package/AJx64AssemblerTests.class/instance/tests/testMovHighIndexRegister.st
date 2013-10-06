testMovHighIndexRegister
	"Mov that use r8-r15 as an index register, therefore requiring REX.X"

	self
		assert: [ :a | a mov: RAX -> ((RCX ptr + R14) * 1) ] bytes: #[16r4A 16r89 16r04 16r31];
		assert: [ :a | a mov: (RCX ptr + R14) * 1 -> RAX ] bytes: #[16r4A 16r8B 16r04 16r31]