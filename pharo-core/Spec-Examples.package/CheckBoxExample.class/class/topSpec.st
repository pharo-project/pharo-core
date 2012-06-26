specs
topSpec

	^ { #ComposableSpec.
			#add:. {{#model.	#button1.}.
						#layout:. {#LayoutFrame.
										#fractions:offsets:. (0@0 corner: 0.33@0). (0@0 corner: 0@25).}}.
			#add:.  {{#model.	#button2.}.
						#layout:. {#LayoutFrame.
										#fractions:offsets:. (0.33@0 corner: 0.66@0). (0@0 corner: 0@25).}}.
			#add:.  {{#model.	#button3.}.
						#layout:. {#LayoutFrame.
										#fractions:offsets:. (0.66@0 corner: 1@0). (0@0 corner: 0@25).}}}