specs
defaultSpec
	<spec>
	
	^ {#ComposableSpec.
			#add:.	{{	#model.	#changeSorterLeft. }.
									#layout:.  {#LayoutFrame.
														#fractions:. (0@0 corner: 0.5@1). }}.
			#add:.	{{	#model.	#changeSorterRight }.
									#layout:.  {#LayoutFrame.
														#fractions:. (0.5@0 corner: 1@1). }}}