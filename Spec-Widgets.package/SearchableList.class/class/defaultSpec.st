specs
defaultSpec

	^ {#ComposableSpec .
		#add: . {{#model . #searchModel.}. #layout: . #(0 0  1 0 0 0 0 25) } .
		#add: . {{#model . #listModel.}. #layout: . #( 0 0 1 1 0 25 0 0 ) }
		}