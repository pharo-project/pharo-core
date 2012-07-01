specs
defaultSpec
	<spec>
	| delta |
	delta := 25.
	^{ #ComposableSpec.
				#add:.	{{#model. #list.}.
									#layout:. 	{#LayoutFrame.
														#fractions:offsets:.	 (0@0 corner: 1@1).	(0@0 corner: 0@(2*delta negated)). }}.
			#add:.	{{#model. #addButton.}.
									#layout:. 	{#LayoutFrame.
														#fractions:offsets:.	 (0@1 corner: 0.33@1).	(0@(2*delta negated) corner: 0@(delta negated)). }}.
																		
			#add:.	{{#model. #editButton.}.
									#layout:. 	{#LayoutFrame.
														#fractions:offsets:.	 (0.33@1 corner: 0.66@1).	(0@(2*delta negated) corner: 0@(delta negated)). }}.																													
			#add:.	{{#model. #removeButton.}.
									#layout:. 	{#LayoutFrame.
														#fractions:offsets:.	 (0.66@1 corner: 1@1).	(0@(2*delta negated) corner: 0@(delta negated)). }}.															
			#add:.	{{#model. #toolbar.}.
											#layout:. 	{#LayoutFrame.
																#fractions:offsets:.	 (0@1 corner: 1@1).	(0@(delta negated) corner: 0@0). }}}