specs
defaultSpec
	<spec>
	| delta |
	delta := 25.
	^{ #ComposableSpec.
			#add:. {{#model. #list. }.
							#layout:. 	{#FrameLayout.
											#rightFraction:. 0.3.
											#bottomOffset:. ((2*delta) negated)}}.						
			#add:. {{#model. #addButton }.
							#layout:. 	{#FrameLayout.
											#topFraction:. 1.
											#rightFraction:. 0.16.
											#topOffset:. ((2*delta) negated).
											#bottomOffset:. (delta negated)}}.
			#add:. {{#model. #removeButton }.
							#layout:. 	
								{#FrameLayout.
										#leftFraction:. 0.16.
										#topFraction:. 1.
										#rightFraction:. 0.33.
										#topOffset:. ((2*delta) negated).
										#bottomOffset:. (delta negated)}}.
			#add:. {{#model. #picklist }.
								{#FrameLayout.
										#leftFraction:. 0.33.
										#rightFraction:. 0.66.
										#bottomOffset:. (delta negated).}}.															
			#add:. {{#model. #text }.
							#layout:. 	
								{#FrameLayout.
										#leftFraction:. 0.66.
										#bottomOffset:. delta negated}}.
			#add:. {{#model. #okCancelToolbar }.
							#layout:. 	
								{#FrameLayout.
										#topFraction:. 1.
										#topOffset:. (delta negated)}}}