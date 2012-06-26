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
			#vResizing:. 						#spaceFill.
			#eventHandler:.					{	#EventHandler. #on:send:to:. #keyStroke.	#keyStroke:fromMorph:. #model	}}