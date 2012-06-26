specs
defaultSpec
	<spec>
	^ {#ComposableSpec.
			#add:.				{	self topSpec.
										#layout:.  {#LayoutFrame.
														#fractions:. (0@0 corner: 1@0.33) }}.
			#add:. 		{{	#model. 	#methodsListModel }.
									#layout:.  {#LayoutFrame.
														#fractions:. (0@0.33 corner: 1@0.66) }}.
			#addMorph:. 		{{	#model. 	#textModel }.
									#layout:.  {#LayoutFrame.
														#fractions:. (0@0.66 corner: 1@1) }}}