specs
topSpec

	^ { #Panel.
			#changeTableLayout.
			#listDirection:.		#rightToLeft.
			#addMorph:. {#model.	#dropList.}.
			#hResizing:.	#spaceFill.
			#vResizing:.	#shrinkWrap.	}