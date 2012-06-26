specs
windowSpec

	^{ #StandardWindow.
			#addMorphBack:.	{ self defaultSpec .
						#layout:. {#FrameLayout.
							#fractions:offsets:. (0@0 corner: 1@1). nil	}}.
			#title:.					self title}