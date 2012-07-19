specs
defaultSpec
	<spec>
	
	^ {#TreeSpec.
	    		#model:.							#model.
			#getLabelSelector:.				#wrapItem:.
			#getRootsSelector:.				#getRoots.
			#getChildrenSelector:.				#getChildrenFor:.
			#setSelectedSelector:.			#setSelectedItem:.
			#color:.							Color white.
			#getMenuSelector:.				#getMenu:.
			#hResizing:. 						#spaceFill.
			#setBalloonText:.					{ #model . #help}.
			#borderColor:.						#(model borderColor).
			#borderWidth:.						#(model borderWidth).
			#vResizing:. 						#spaceFill.
			#eventHandler:.					{	#EventHandler. #on:send:to:. #keyStroke.	#keyStroke:fromMorph:. #model	}}