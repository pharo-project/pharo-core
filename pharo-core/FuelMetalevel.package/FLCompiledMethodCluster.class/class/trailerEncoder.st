instance creation
trailerEncoder 
	TrailerEncoder isNil ifTrue: [TrailerEncoder := FLCompiledMethodTrailerEncoderNoSource new ].
	^ TrailerEncoder