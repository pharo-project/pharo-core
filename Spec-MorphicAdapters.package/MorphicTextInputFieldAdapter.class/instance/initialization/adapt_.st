adapt: aModel
	
	super adapt: aModel.
	aModel whenBuiltDo: [ :w | w widget color: Color white ]