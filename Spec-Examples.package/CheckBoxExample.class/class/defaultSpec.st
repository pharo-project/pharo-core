specs
defaultSpec

	^ { #ComposableSpec.
			#add:.	{ self topSpec.
								#layout:. 	{#LayoutFrame.
																#fractions:offsets:.	(0@0 corner: 1@0).	(0@0 corner: 0@20). }}.
			#add:.	{{#model. #container.}.
											#layout:. 	{#LayoutFrame.
																#fractions:offsets:.	 (0@0 corner: 1@1).	(0@22 corner: 0@0). }}}