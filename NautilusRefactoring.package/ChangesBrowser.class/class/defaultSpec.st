specs
defaultSpec
	<spec>
	| height |
	height := 25.
	^ { #Panel.
			#changeProportionalLayout.
			#addMorphWrapper:.	{	#MorphWrapper.
											#morph:. 	{#model. #pickList.}.
											#fullFrame:. 	{#LayoutFrame.
																#fractions:offsets:.	 ( 0@0 corner: 1@0.5 ).	(0@0 corner: 0@height negated). }}.
			#addMorphWrapper:.	{	#MorphWrapper.
											#morph:. 	{#model. #textArea.}.
											#fullFrame:. 	{#LayoutFrame.
																#fractions:offsets:.	( 0@0.5 corner: 1@1 ).	(0@height negated corner: 0@(height negated)). }}.
			#addMorphWrapper:.	{	#MorphWrapper.
											#morph:. 		{#model. #acceptButton.}.
											#fullFrame:. 	{#LayoutFrame.
																#fractions:offsets:.	 (0@1 corner: 0.5@1).	(0@(height negated) corner: 0@0). }}.										
			#addMorphWrapper:.	{	#MorphWrapper.
											#morph:. 	{#model. #cancelButton.}.
											#fullFrame:. 	{#LayoutFrame.
																#fractions:offsets:.	 (0.5@1 corner: 1@1).	(0@(height negated) corner: 0@0). }}.
			#addPaneSplitters.
			#vResizing:. #spaceFill.
			#hResizing:. #spaceFill}.