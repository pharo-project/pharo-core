importFor: requestor
	self existsBehavior
		ifFalse: [ self handleMissingBehavior ].
	requestor ifNotNil: [ requestor contents ifNil: [ requestor contents: contents ] ].
	^ self targetClass
		compile: contents
		classified: categoryName
		withStamp: stamp
		notifying: requestor