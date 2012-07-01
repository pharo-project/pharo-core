specs
defaultSpec

	^ { #ComposableSpec.
			#add:.	{ self topSpec.
						#layout:. 	{#LayoutFrame.
										#fractions:offsets:.	(0@0 corner: 1@0).	(0@0 corner: 0@30). }}.
			#add:.	{{#model. #container.}.
						#layout:. 	{#LayoutFrame.
										#fractions:offsets:.	 (0@0 corner: 1@1).	(0@42 corner: 0@0). }}}