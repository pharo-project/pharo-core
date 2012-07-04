specs
defaultSpec
	<spec>
	^ {#TextField.
			#convertTo:. 							String.
			#on:text:accept:readSelection:menu:. 	#model. #getText. #accept:. nil. nil.
			#entryCompletion:. 				{	#model. 	#entryCompletion	}.
			#autoAccept:.						{	#model. 	#autoAccept			}.	
			#acceptOnCR:. 					{	#model. 	#acceptOnCR			}.
			#ghostText:.						{	#model. 	#ghostText			}.
			#enabled:.							{	#model. 	#enabled				}.
			#encrypted:.						{ 	#model.	#encrypted			}.
			#hResizing:. 							#spaceFill.
			#vResizing:. 							#spaceFill.
			#hideScrollBarsIndefinitely.
			#eventHandler:.					{	#EventHandler. #on:send:to:. #keyStroke.	#keyStroke:fromMorph:. #model	}}