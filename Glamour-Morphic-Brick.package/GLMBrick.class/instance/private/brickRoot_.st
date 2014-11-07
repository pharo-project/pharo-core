brickRoot: aGLMFoundationBrick
	"never ever use this method"
	
	brickRoot := aGLMFoundationBrick.
	
	self subbricks do: [ :each | each isBrick ifTrue: [ each brickRoot: brickRoot ] ]