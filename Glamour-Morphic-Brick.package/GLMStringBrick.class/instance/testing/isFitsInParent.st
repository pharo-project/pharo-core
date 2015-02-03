isFitsInParent

	^ self owner
		ifNil: [ self bounds containsRect: (self outerBounds origin extent: self textSize) ]
		ifNotNil: [
			self owner bounds extent >= self textSize ]
				