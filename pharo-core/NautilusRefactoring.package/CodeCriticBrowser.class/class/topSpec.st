specs
topSpec

	^ { #PanelMorph.
			#changeTableLayout.
			#listDirection:.		#rightToLeft.
			#hResizing:. 		#spaceFill.
			#vResizing:. 		#spaceFill.
			#addMorph:. 		{	#model.	#listModel1.	}.
			#addMorph:. 		{	#model.	#listModel2.	}.
			#addMorph:. 		{	#model.	#listModel3.	}}