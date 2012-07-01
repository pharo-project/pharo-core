specs
defaultSpec

	^ { #Panel.
			#changeProportionalLayout.
			#addMorphWrapper:.	{	#MorphWrapper.
											#morph:. 		self topSpec.
											#fullFrame:. 	{#LayoutFrame.
																#fractions:offsets:.	(0@0 corner: 1@0).	(0@0 corner: 0@20). }}.
			#addMorphWrapper:.	{	#MorphWrapper.
											#morph:. 		{#model. #container.}.
											#fullFrame:. 	{#LayoutFrame.
																#fractions:offsets:.	 (0@0 corner: 1@1).	(0@22 corner: 0@0). }}.
			#hResizing:.	#shrinkWrap.
			#vResizing:.	#shrinkWrap.	}