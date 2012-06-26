specs
defaultSpec

	^ {
		#ComposableSpec.
			#add: . {{#model . #workingCopies} . 
					#layout: . { #FrameLayout . #fractions:. 0@0 corner: 0.5@1.} 
					} . 
			#add: . {{#model . #repositories } . 
					#layout: . { #FrameLayout . #fractions:. 0.5@0 corner: 1@1.} 
					}
		}