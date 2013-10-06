defaultSpec
	<spec>
	| delta |
	delta := 25.
	^{#ComposableSpec.

			#add:.	{{#model.	#instVars.}.
								#layout:.  {#FrameLayout.
												#bottomFraction:. 0.
												#bottomOffset:. delta.}}.
			#add:.	{{#model.	#selectors.}.					
								#layout:. {#FrameLayout.
												#bottomFraction:.  0 .
												#topOffset:.  (delta+4) .
												#bottomOffset:.  (2*delta+4) .}}.							
			#add:.	{{#model.	#fractionLabel.}.
								#layout:. {#FrameLayout.
												#bottomFraction:.  0 .
												#topOffset:.  (2*delta+8).
												#bottomOffset:.  (3*delta+8).}}.
			#add:.	{{#model.	#fractionField.}.
								#layout:. {#FrameLayout.
												#bottomFraction:.  0 .
												#topOffset:.   3*delta+12 .
												#bottomOffset:.  (4*delta+24).}}.
			#add:.	{{#model. 	#offsetLabel.}.
								#layout:. {#FrameLayout.
												#bottomFraction:.   0 .
												#topOffset:.   (4*delta+28) .
												#bottomOffset:.  (5*delta+28).}}.
			#add:.	{{#model. 	#offsetField.}.
								#layout:. {#FrameLayout.
												#bottomFraction:.   0 .
												#topOffset:.  (5*delta+32) .
												#bottomOffset:.   (6*delta+44).}}.		
			#add:.	{{#model.	#toolbar.}.
								#layout:. {#FrameLayout.
												#topFraction:.  1 .
												#topOffset:.   (delta negated) .}}}