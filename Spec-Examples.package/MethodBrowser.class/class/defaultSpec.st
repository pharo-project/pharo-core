specs
defaultSpec

	^{ #ComposableSpec.
			#add:. {{#model. #listModel}. #layout:.  #(FrameLayout
															bottomFraction: 0.5
															bottomOffset: -15) }.
			#add:. {{#model. #toolbarModel}. #layout:.  #(FrameLayout
															topFraction: 0.5
															bottomFraction: 0.5
															topOffset: -15
															bottomOffset: 15) }.															
			#add:. {{#model. #textModel}. #layout:. #(FrameLayout
															topFraction: 0.5
															topOffset: 15). }}