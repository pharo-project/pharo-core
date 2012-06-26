specs
defaultSpec
	<spec>
	| delta |
	delta := 25.
	^{#ComposableSpec.

			#add:.	{{#model.	#instVars.}.
								#layout:. {#LayoutFrame.
												#fractions:offsets:.	(0@0 corner: 1@0). (0@0 corner: 0@delta)}}.
			#add:.	{{#model.	#selectors.}.					
								#layout:. {#LayoutFrame.
												#fractions:offsets:.	(0@0 corner: 1@0). (0@(delta+4) corner: 0@(2*delta+4))}}.							
			#add:.	{{#model.	#fractionLabel.}.
								#layout:. {#LayoutFrame.
												#fractions:offsets:.	(0@0 corner: 1@0). (0@(2*delta+8) corner: 0@(3*delta+8))}}.
			#add:.	{{#model.	#fractionField.}.
								#layout:. {#LayoutFrame.
												#fractions:offsets:.	(0@0 corner: 1@0). (0@(3*delta+12) corner: 0@(4*delta+24))}}.
			#add:.	{{#model. 	#offsetLabel.}.
								#layout:. {#LayoutFrame.
												#fractions:offsets:.	(0@0 corner: 1@0). (0@(4*delta+28) corner: 0@(5*delta+28))}}.
			#add:.	{{#model. 	#offsetField.}.
								#layout:. {#LayoutFrame.
												#fractions:offsets:.	(0@0 corner: 1@0). (0@(5*delta+32) corner: 0@(6*delta+44))}}.		
			#add:.	{{#model.	#toolbar.}.
								#layout:. {#LayoutFrame.
												#fractions:offsets:.	(0@1 corner: 1@1). (0@(delta negated) corner: 0@0)}}}