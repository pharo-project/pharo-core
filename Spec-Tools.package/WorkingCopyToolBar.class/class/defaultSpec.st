specs
defaultSpec 

	^ {#ComposableSpec.
			#add: . {{#model . #packageButton.} . #layout: .  #(0 0 0.25 0 0 0 0 25)} . 

			#add: . {{#model . #configButton.} .
						#layout: . #(0.25 0 0.50 0 0 0 0 25) } .
											
			#add: . {{#model . #sliceButton.} .
						#layout: . #(0.50 0 0.75 0 0 0 0 25) } .											

			#add: . {{#model . #browseButton.} .
						#layout: . #(0.75 0 1 0 0 0 0 25)} 	
		}