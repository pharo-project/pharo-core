defaultSpec
	<spec>
	^ {#AlphaImageMorph.
			#color:. Color black.
			#model:. 					#model.
			#getImageSelector:.		#getImage.
			#vResizing:.				#spaceFill.
			#hResizing:.				#spaceFill.
			#layout:.					#scaledAspect.
			#borderWidth:.				#(model borderWidth).
			#borderColor:.				#(model borderColor).
			#dragEnabled:.				#(model dragEnabled).
			#dropEnabled:.				#(model dropEnabled).	
			#setBalloonText:.			{ #model . #help}}