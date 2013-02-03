protocol
interpretASpec: aPresenter model: aModel superSpec: aSpec
	| result |
	
	 [ result :=  self 
				private_interpretASpec: aPresenter
				model: aModel
				superSpec: aSpec ] ensure: [ self resetBindings ].
	^ result