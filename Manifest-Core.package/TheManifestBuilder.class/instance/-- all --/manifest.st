manifest
	^ manifest ifNil: [ manifest := manifestClass new ]