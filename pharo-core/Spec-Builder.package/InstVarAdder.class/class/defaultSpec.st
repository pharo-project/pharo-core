specs
defaultSpec
	<spec>
	| height width |
	height := 25.
	width := (StandardFonts defaultFont widthOfString: 'Name:') + 10.
	^ { #ComposableSpec.
			#add:. {{#model. #nameLabel.}.
							#layout:. 	{#FrameLayout.
											#fractions:offsets:.	 ( 0@0 corner: 0.5@1 ).	(0@0 corner: 0@(2*height) negated). }}.
			#add:. {{#model. #nameField.}.
							#layout:. {#FrameLayout.
											#fractions:offsets:.	( 0@0 corner: 1@1 ).	(width@0 negated corner: 0@(2*height) negated). }}.
			#add:. {{#model. #typeLabel.}.
							#layout:. 	{#FrameLayout.
											#fractions:offsets:.	 (0@1 corner: 0.5@1).	(0@(2*height negated) corner: 0@(height negated)). }}.										
			#add:.	{{#model. #typeChoice.}.
							#layout:. 	{#FrameLayout.
											#fractions:offsets:.	 (0@1 corner: 1@1).	(width@(2*height negated) corner: 0@(height negated)). }}.
																		
			#add:.	{{#model. #toolbar.}.
							#layout:. 	{#FrameLayout.
											#fractions:offsets:.	 (0@1 corner: 1@1).	(0@(height negated) corner: 0@0). }}}