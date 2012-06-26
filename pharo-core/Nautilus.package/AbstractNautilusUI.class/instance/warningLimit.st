private
warningLimit
	
	^ self model 
		ifNil: [ 350 ]
		ifNotNil: [:mod | model warningLimit ]