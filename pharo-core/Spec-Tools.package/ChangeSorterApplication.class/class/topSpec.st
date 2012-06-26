specs
topSpec

	^ {#ComposableSpec.
			#add:. 		{{	#model. 	#changesListModel. }.
									#layout:.  {#LayoutFrame.
														#fractions:. (0@0 corner: 0.5@1) }}.
			#add:. 		{{	#model. 	#classesListModel }.
									#layout:.  {#LayoutFrame.
														#fractions:. (0.5@0 corner: 1@1) }}}