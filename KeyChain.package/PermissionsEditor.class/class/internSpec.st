specs
internSpec
<spec>

	^{#ComposableSpec.
			#add:. {{#model. #isRoot }.
						#layout:. #(0 0  1 0 0 0 0 25) }.
			#add:. {{#model. #canBrowse }.
						#layout:. #(0 0  1 0 0 25 0 50) }.
			#add:. {{#model. #canDebug }.
						#layout:. #(0 0 1 0 0 50 0 75) }.
			#add:. {{#model. #canDropOSFile }.
						#layout:. #(0 0   1 0 0 75   0 100)}.
			#add:. {{#model. #canEditCode }.
						#layout:. #(0 0   1 0 0 100   0 125)}.
			#add:. {{#model. #canEditUser }.
						#layout:. #(0 0   1 0 0 125   0 150)}.
			#add:. {{#model. #canEvaluateCode }.
						#layout:. #(0 0   1 0 0 150   0 175)}.
			#add:. {{#model. #canRunStartupScript }.
						#layout:. #(0 0   1 0 0 175   0 200)}.
			#add:. {{#model. #canShowMorphHalo }.
						#layout:. #(0 0   1 0 0 200   0 225)}
	}