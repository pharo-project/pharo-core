specs
defaultSpec
	<spec>
	^ { #PanelMorph.
			#changeTableLayout.
			#listDirection:.		#bottomToTop.
			#addMorph:. 		self topSpec.
			#hResizing:. 		#spaceFill.
			#vResizing:. 		#spaceFill.
			#addMorph:. 		{	#model.	#textModel. }}