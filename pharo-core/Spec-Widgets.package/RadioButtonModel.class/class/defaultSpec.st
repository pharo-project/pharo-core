specs
defaultSpec
	<spec>
	^ {#CheckboxSpec.
	    		#on:selected:changeSelected:. 	#model. #state. #state:.
			#label:.								{	#model. #label		}.
			#labelClickable:.					{	#model. #labelClickable}.
			#beRadioButton.
			#hResizing:. 						#shrinkWrap.
			#vResizing:. 						#shrinkWrap.
			#eventHandler:.					{	#EventHandler. #on:send:to:. #keyStroke.	#keyStroke:fromMorph:. #model	}}