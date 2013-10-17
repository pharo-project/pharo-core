categoryNames
	^  self packages 	
		inject:  #()
		into: [ :all :each | all, (each classTagNames asArray) ]