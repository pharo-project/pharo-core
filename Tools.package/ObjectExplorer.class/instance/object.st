accessing
object
	^currentSelection ifNotNil: [ :cs | cs withoutListWrapper ]