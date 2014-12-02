compileSelector: selector returnValue: arrayString
	manifestClass
		compile: selector asString , Character cr asString , '^ ' , arrayString 
		classified: 'meta data'