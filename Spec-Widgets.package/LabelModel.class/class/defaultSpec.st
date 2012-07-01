specs
defaultSpec
	<spec>
	^ {#LabelSpec.
			#model:. 				#model.
			#getEnabledSelector:.	#enabled.
			#getTextSelector:.		#getText.
			#vResizing:.			#shrinkWrap.
			#hResizing:.			#spaceFill.
			#eventHandler:.	{	#EventHandler. #on:send:to:. #keyStroke.	#keyStroke:fromMorph:. #model	}}