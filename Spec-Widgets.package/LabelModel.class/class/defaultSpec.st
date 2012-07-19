specs
defaultSpec
	<spec>
	^ {#LabelSpec.
			#model:. 				#model.
			#getEnabledSelector:.	#enabled.
			#getTextSelector:.		#getText.
			#vResizing:.			#shrinkWrap.
			#hResizing:.			#spaceFill.
			#borderWidth:.						#(model borderWidth).
			#borderColor:.						#(model borderColor).
			#setBalloonText:.					{ #model . #help}.
			#eventHandler:.	{	#EventHandler. #on:send:to:. #keyStroke.	#keyStroke:fromMorph:. #model	}}