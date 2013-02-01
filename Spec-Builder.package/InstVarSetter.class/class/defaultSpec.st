specs
defaultSpec
	<spec>
	| delta |
	delta := 25.
	^{ #ComposableSpec.
			#add:. {{#model. #list. }.
							#layout:. 	{ 0  . 0 . 0.3 . 1 . 0 . 0 . 0 . ((2*delta) negated)}}.						
			#add:. {{#model. #addButton }.
							#layout:. 	{ 0 . 1 . 0.16 . 1 . 0 . ((2*delta) negated) . 0 . (delta negated)}}.
			#add:. {{#model. #removeButton }.
							#layout:. 	{ 0.16 . 1 . 0.33 . 1 . 0  . ((2*delta) negated) . 0 . (delta negated)}}.
			#add:. {{#model. #picklist }.
							#layout:. 	{ 0.33 . 0 . 0.66 . 1 . 0 . 0 . 0 . (delta negated)}}.															
			#add:. {{#model. #text }.
							#layout:. 	{0.66 . 0 . 1 . 1 . 0 . 0 . 0 . delta negated}}.
			#add:. {{#model. #okCancelToolbar }.
							#layout:. 	{ 0 . 1. 1 . 1 . 0 . (delta negated) .  0 . 0}}}