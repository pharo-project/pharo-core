text
	^ text ifNil: [ 
		text := self instantiate: TextModel.
		text aboutToStyle: true. ]