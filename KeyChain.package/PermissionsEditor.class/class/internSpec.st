specs
internSpec
<spec>

	^{#ComposableSpec.
			#add:. {{#model. #isRoot }.
						#layout:. {#LayoutFrame.
										#fractions:offsets:. (0@0 corner: 1@0). (0@0 corner: 0@25)}}.
			#add:. {{#model. #canBrowse }.
						#layout:. {#LayoutFrame.
										#fractions:offsets:. (0@0 corner: 1@0). (0@25 corner: 0@50)}}.
			#add:. {{#model. #canDebug }.
						#layout:. {#LayoutFrame.
										#fractions:offsets:. (0@0 corner: 1@0). (0@50 corner: 0@75)}}.
			#add:. {{#model. #canDropOSFile }.
						#layout:. {#LayoutFrame.
										#fractions:offsets:. (0@0 corner: 1@0). (0@75 corner: 0@100)}}.
			#add:. {{#model. #canEditCode }.
						#layout:. {#LayoutFrame.
										#fractions:offsets:. (0@0 corner: 1@0). (0@100 corner: 0@125)}}.
			#add:. {{#model. #canEditUser }.
						#layout:. {#LayoutFrame.
										#fractions:offsets:. (0@0 corner: 1@0). (0@125 corner: 0@150)}}.
			#add:. {{#model. #canEvaluateCode }.
						#layout:. {#LayoutFrame.
										#fractions:offsets:. (0@0 corner: 1@0). (0@150 corner: 0@175)}}.
			#add:. {{#model. #canRunStartupScript }.
						#layout:. {#LayoutFrame.
										#fractions:offsets:. (0@0 corner: 1@0). (0@175 corner: 0@200)}}.
			#add:. {{#model. #canShowMorphHalo }.
						#layout:. {#LayoutFrame.
										#fractions:offsets:. (0@0 corner: 1@0). (0@200 corner: 0@225)}}}