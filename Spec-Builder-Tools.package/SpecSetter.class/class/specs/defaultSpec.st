defaultSpec
	<spec>
	| delta |
	delta := 25.
	^{ #ComposableSpec.
				#add:.	{{#model. #list.}.
									#layout:. 	{#FrameLayout.
													#bottomOffset:.  (2*delta negated).}}.
			#add:.	{{#model. #addButton.}.
									#layout:. 	{#FrameLayout.
													#topFraction:.  1  .
													#rightFraction:. 0.33 .
													#topOffset:.  (2*delta negated)  .
													#bottomOffset:.  (delta negated).}}.
																		
			#add:.	{{#model. #editButton.}.
									#layout:. 	{#FrameLayout.
													#leftFraction:. 0.33 .
													#topFraction:.  1  .
													#rightFraction:.  0.66 .
													#topOffset:.  (2*delta negated)  .
													#bottomOffset:.  (delta negated).}}.																													
			#add:.	{{#model. #removeButton.}.
									#layout:. 	{#FrameLayout.
													#leftFraction:. 0.66 .
													#topFraction:.  1  .
													#topOffset:.  (2*delta negated)  .
													#bottomOffset:.  (delta negated).}}.															
			#add:.	{{#model. #toolbar.}.
									#layout:. 	{#FrameLayout.
													#topFraction:.  1  .
													#topOffset:.  (delta negated)  .}}}