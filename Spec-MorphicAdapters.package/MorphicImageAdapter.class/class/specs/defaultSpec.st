defaultSpec
	<spec>
	^ {#AlphaImageMorph.
			"#color:. Color transparent."
			#model:. 					#model.
			#getImageSelector:.		#getImage.
			#vResizing:.				#spaceFill.
			#hResizing:.				#spaceFill.
			#layout:.					#center.
			"#borderWidth:.				#(model borderWidth).
			#borderColor:.				#(model borderColor)."
			#dragEnabled:.				#(model dragEnabled).
			#dropEnabled:.				#(model dropEnabled).	
			#setBalloonText:.			{ #model . #help}.
			#update:. #getImage}