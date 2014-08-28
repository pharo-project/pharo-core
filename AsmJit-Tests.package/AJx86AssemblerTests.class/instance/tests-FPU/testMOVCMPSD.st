testMOVCMPSD
	"MOVSD/CMPSD is aliased to no-op string operations, make sure we generate correct code when the intention is to use SSE2 instruction"

	| instructions |
	instructions := asm
		instructionsFor: [ 
			[ 
			asm
				movsd: XMM1 with: XMM2;
				cmpsd:XMM1 with: XMM2;
				bytes ]
				on: ShouldBeImplemented
				do: [:e | "Dispatch to correct op happens during emission, don't let an operation whose group is unimplemented yet stop us from checking the operation is at least converted correctly."
					"We do want to run the next ops as well though, so resume this even though it can't"
					e resumeUnchecked: nil] ].
	instructions
		do: [ :instruction | 
			self
				assert:
					(AJx86InstructionDescription instructionsAmbiguous
						contains: [ :one | one first = instruction name and: [ one second = instruction description group ] ]) ]