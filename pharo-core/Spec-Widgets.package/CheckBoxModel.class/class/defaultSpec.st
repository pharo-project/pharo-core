specs
defaultSpec
	<spec>
	^ {#CheckboxSpec.
	    		#on:selected:changeSelected:. 	#model. #state. #state:.
			#label:.								{	#model. #label		}.
			#labelClickable:.					{	#model. #labelClickable}.
			#beCheckbox.
			#hResizing:. 						#shrinkWrap.
			#vResizing:. 						#shrinkWrap.
			#eventHandler:.					{	#EventHandler. #on:send:to:. #keyStroke.	#keyStroke:fromMorph:. #model	}}