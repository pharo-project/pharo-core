specs
bottomSpec

	^ {#Panel.
			#changeTableLayout.
			#listDirection:.			#rightToLeft.
			#addMorph:.			{#model.	#textModel1.}.
			#addMorph:.			{#model.	#textModel2.}.
			#hResizing:.	#spaceFill.
			#vResizing:.	#spaceFill.}