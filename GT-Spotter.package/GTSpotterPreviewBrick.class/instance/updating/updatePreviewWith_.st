updatePreviewWith: anObject

	self spotterModel isPreviewVisible ifFalse: [ ^ self ].
	
	self asyncTask
		execute: [ :composite :entity |
				[ anObject spotterPreviewIn: composite inContext: self spotterModel ]
					on: Exception
					do: [ composite removeAllBricks ].
				 composite ]
		withArguments: { self newCompositeBrick . anObject }
		callback: [ :composite |
			self compositeBrick: composite.
			self doLayout.
			self changed ]
		priority: Processor userBackgroundPriority