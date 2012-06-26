specs
defaultSpec

	^{#ComposableSpec.	
			#add:.			{{	#model.	#listModel.}.
									#layout:. {#FrameLayout.
													#fractions:.	 (0@0 corner: 1@0.5).}}.
			#add:.			{{	#model.	#textModel1.}.
									#layout:. {#FrameLayout.
													#fractions:.	 (0@0.5 corner: 0.5@1). }}.
			#add:.			{{	#model.	#textModel2.}.
									#layout:. {#FrameLayout.
													#fractions:.	 (0.5@0.5 corner: 1@1). }}}.