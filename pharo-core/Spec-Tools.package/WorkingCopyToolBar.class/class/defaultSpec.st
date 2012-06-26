specs
defaultSpec 

	^ {#ComposableSpec.
			#add: . {{#model . #packageButton.} .
						#layout: . {#FrameLayout  . #fractions:offsets: .  
											0@0 corner: 0.25@0 . 
											0@0 corner: 0@25 }} . 

#add: . {{#model . #configButton.} .
						#layout: . {#FrameLayout  . #fractions:offsets: .  
											0.25@0 corner: 0.50@0 . 
											0@0 corner: 0@25 }} . 
											
#add: . {{#model . #sliceButton.} .
						#layout: . {#FrameLayout  . #fractions:offsets: .  
											0.50@0 corner: 0.75@0 . 
											0@0 corner: 0@25 }} . 											

#add: . {{#model . #browseButton.} .
						#layout: . {#FrameLayout  . #fractions:offsets: .  
											0.75@0 corner: 1@0 . 
											0@0 corner: 0@25 }} 	
		}