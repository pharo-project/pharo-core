specs
defaultSpec

	^{ #ComposableSpec.
			#add:. {{#model. #listModel}.
											#layout:. {#FrameLayout.
												#fractions:offsets:. 	(0@0 corner: 1@0.5).	(0@0 corner: 0@(-15)). }}.
			#add:. {{#model. #toolbarModel}.
											#layout:. {#FrameLayout.
												#fractions:offsets:. 	(0@0.5 corner: 1@0.5).	(0@(-15) corner: 0@15). }}.															
			#add:. {{#model. #textModel}.
											#layout:. {#FrameLayout.
												#fractions:offsets:. 	(0@0.5 corner: 1@1).	(0@15 corner: 0@0). }}.}