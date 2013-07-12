specs
defaultSpec
	<spec>
	^ { #Panel.
			#changeTableLayout.
			#listDirection:.		#rightToLeft.
			#addMorph:. {#model.	#installModel.}.
			#addMorph:. {#model.	#loadModel.}.
			#hResizing:.	#spaceFill.
			#vResizing:.	#shrinkWrap.	}