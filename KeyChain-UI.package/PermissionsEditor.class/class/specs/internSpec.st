internSpec
<spec>

	^{#ComposableSpec.
			#add:. {{#model. #isRoot }.
						#layout:. #(FrameLayout
										bottomFraction: 0
										bottomOffset: 25) }.
			#add:. {{#model. #canBrowse }.
						#layout:. #(FrameLayout
										bottomFraction: 0
										topOffset: 25
										bottomOffset: 50) }.
			#add:. {{#model. #canDebug }.
						#layout:. #(FrameLayout
										bottomFraction: 0
										topOffset: 50
										bottomOffset: 75) }.
			#add:. {{#model. #canDropOSFile }.
						#layout:. #(FrameLayout
										bottomFraction: 0
										topOffset: 75
										bottomOffset: 100)}.
			#add:. {{#model. #canEditCode }.
						#layout:. #(FrameLayout
										bottomFraction: 0
										topOffset: 100
										bottomOffset: 125)}.
			#add:. {{#model. #canEditUser }.
						#layout:. #(FrameLayout
										bottomFraction: 0
										topOffset: 125
										bottomOffset: 150)}.
			#add:. {{#model. #canEvaluateCode }.
						#layout:. #(FrameLayout
										bottomFraction: 0
										topOffset: 150
										bottomOffset: 175)}.
			#add:. {{#model. #canRunStartupScript }.
						#layout:. #(FrameLayout
										bottomFraction: 0
										topOffset: 175
										bottomOffset: 200)}.
			#add:. {{#model. #canShowMorphHalo }.
						#layout:. #(FrameLayout
										bottomFraction: 0
										topOffset: 200
										bottomOffset: 225)}}