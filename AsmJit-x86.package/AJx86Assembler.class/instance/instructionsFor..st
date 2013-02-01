instruction list
instructionsFor: aBlockWithCode

	| old new |

	old := instructions.
	instructions := nil.

	[
		aBlockWithCode value.
	] ensure: [ 
		new := instructions.
		instructions := old ].

	^ new