defaultSpec

	^ {#ComposableSpec .
		#add: . {{#model . #searchModel.}. #layout: . #(FrameLayout
															bottomFraction: 0
															bottomOffset: 25) } .
		#add: . {{#model . #listModel.}. #layout: . #(FrameLayout
															topOffset: 25) }}