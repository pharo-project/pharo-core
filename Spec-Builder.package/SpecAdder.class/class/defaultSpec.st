specs
defaultSpec
	<spec>
	| delta |
	delta := 25.
	^{#ComposableSpec.

			#add:.	{{#model.	#instVars.}.
								#layout:.  { 0 . 0 . 1 . 0 . 0 . 0 .  0 . delta}}.
			#add:.	{{#model.	#selectors.}.					
								#layout:. { 0 . 0 . 1 . 0 .  0 . (delta+4) .  0 . (2*delta+4) }}.							
			#add:.	{{#model.	#fractionLabel.}.
								#layout:. { 0 . 0 . 1 . 0 .  0 . (2*delta+8).  0 . (3*delta+8)}}.
			#add:.	{{#model.	#fractionField.}.
								#layout:. { 0 . 0 .  1 . 0 . 0 .  3*delta+12 . 0 . (4*delta+24)}}.
			#add:.	{{#model. 	#offsetLabel.}.
								#layout:. { 0 . 0 .  1 .  0 . 0 .  (4*delta+28) . 0 . (5*delta+28)}}.
			#add:.	{{#model. 	#offsetField.}.
								#layout:. { 0 . 0 .  1 .  0 . 0 . (5*delta+32) . 0.  (6*delta+44)}}.		
			#add:.	{{#model.	#toolbar.}.
								#layout:. { 0 . 1 . 1 .  1 .  0 .  (delta negated) .  0 . 0 }}}