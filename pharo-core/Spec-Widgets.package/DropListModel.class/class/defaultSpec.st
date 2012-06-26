specs
defaultSpec
	<spec>
	
	^ {#DropListSpec.
	    		#on:list:selected:changeSelected:. 	#model. #getList. #getIndex. #setIndex:.
			#hResizing:. 						#spaceFill.
			#vResizing:. 						#spaceFill.
			#eventHandler:.					{	#EventHandler. #on:send:to:. #keyStroke.	#keyStroke:fromMorph:. #model	}}