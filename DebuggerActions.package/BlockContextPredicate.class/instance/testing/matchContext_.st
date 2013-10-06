matchContext: aContext

	^ blockCondition isNil 
		ifFalse: [ blockCondition cull: aContext ] 
		ifTrue: [ false ]