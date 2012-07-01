interpreting
interpretASpec: aPresenter model: aModel superSpec: aSpec
	
	self model: aModel.
	superSpec := aSpec.
	^ self interpretASpec: aPresenter