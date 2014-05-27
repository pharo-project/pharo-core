compileNewUpdateMethodSilentlyPreLoad: preload postLoad: postLoad
	"Use me to create a new update method with the next update number"
	"self new compileNewUpdateMethod"
	

	self class compile: 
		(self newGenerateNewUpdateMethodSilentlyPreLoad: preload postLoad: postLoad)
		classified: 'pharo - updates'
