defaultSpec

	^ {
		#ComposableSpec.
			#add: . {{#model . #workingCopies} . 
					#layout: . #(FrameLayout
									rightFraction: 0.5)} . 
			#add: . {{#model . #repositories } . 
					#layout: . #(FrameLayout
									leftFraction: 0.5)}
		}