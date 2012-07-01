specs
defaultSpec
	<spec>
	
	^ {#ComposableSpec.
			#add:. {{#model. #droplist. }.
						#layout:. {#FrameLayout. #class.
										#fractions:offsets:. (0@0 corner: 0.6@0). (0@0 corner: 0@25)}}.
			#add:. {{#model. #displayList.}.
						#layout:. {#FrameLayout. #class.
										#fractions:offsets:. (0.6@0 corner: 1@0). (0@0 corner: 0@25)}}.
			#add:. {{#model. #list.}.
						#layout:. {#FrameLayout. #class.
										#fractions:offsets:. (0@0 corner: 1@1). (0@25 corner: 0@(-25))}}.
			#add:. {{#model. #okButton.}.
						#layout:. {#FrameLayout. #class.
										#fractions:offsets:. (1@1 corner: 1@1). (-75@(-25) corner: 0@0)}}}