updatePreviewWith: anObject
	|wasNil|
	self spotterModel isPreviewVisible ifFalse: [ ^ self ].
	
	wasNil := previewObject isNil.
	previewObject = anObject ifTrue: [ ^ self ].
	previewObject := anObject.
	
	previewObject ifNil: [ ^ self updatePreviewWithEmpty ].
	wasNil ifTrue: [ self updatePreviewWithLoading ].
	
	self asyncTask
		execute: [ :composite :entity |
				[ entity spotterPreviewIn: composite inContext: self spotterModel ]
					on: Exception
					do: [ composite removeAllBricks ].
				 composite ]
		withArguments: { self newCompositeBrick . anObject }
		callback: [ :composite |
			self compositeBrick: composite.
			self changed ]
		priority: Processor userBackgroundPriority
		delay: 50