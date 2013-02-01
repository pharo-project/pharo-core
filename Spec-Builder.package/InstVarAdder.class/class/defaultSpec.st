specs
defaultSpec
	<spec>
	| height width |
	height := 25.
	width := (StandardFonts defaultFont widthOfString: 'Name:') + 10.
	^ { #ComposableSpec.
			#add:. {{#model . #nameLabel } . #layout: .  { 0 . 0 . 0.5 . 1 . 0 . 0 . 0 . (2*height) negated} }.
			#add:. {{#model. #nameField.}.
							#layout:. { 0 . 0 . 1 . 1 . width . 0 .  0 . (2*height) negated}}.
			#add:. {{#model. #typeLabel.}.
							#layout:. 	{ 0 . 1 . 0.5 . 1 . 0 . (2*height negated) . 0 . (height negated)}} .										
			#add:.	{{#model. #typeChoice.}. #layout:. 	{ 0 . 1 . 1 . 1 . width . (2*height negated) . 0 . (height negated)}}.
																		
			#add:.	{{#model. #toolbar.}.
							#layout:. 	{ 0 . 1 . 1 . 1 .	0 . (height negated) . 0 . 0}. }}