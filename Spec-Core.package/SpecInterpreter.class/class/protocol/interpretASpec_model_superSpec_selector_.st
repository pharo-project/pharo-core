interpretASpec: aPresenter model: aModel superSpec: aSpec selector: aSelector
	| result |
	
	 [ result :=  self 
				private_interpretASpec: aPresenter
				model: aModel
				superSpec: aSpec
				selector: aSelector ] ensure: [ self resetBindings ].
	^ result