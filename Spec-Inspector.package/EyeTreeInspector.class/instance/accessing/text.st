text
	^ text ifNil: [ 
		text := self instantiate: TextModel ]