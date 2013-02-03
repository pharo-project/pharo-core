specs
defaultSpec2
<spec: #default>
	^ { #ComposableSpec.
			#add:. {{#model. #listModel.}.
											#layout:. #(FrameLayout
																	rightFraction: 0.5
																	bottomFraction: 0.5)}.
			#add:. {{#model. #methodModel. #listModel.}.
											#layout:.#(FrameLayout
																	leftFraction: 0.5
																	bottomFraction: 0.5)}.
			#add:. {{#model. #methodModel. #textModel}.
											#layout:.#(FrameLayout
																	topFraction: 0.5)}}.