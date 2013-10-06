drawClippedOn: aCanvas during: aBlock

	^ self clipSubmorphs 
		ifTrue: [ 
			 aCanvas
				clipBy: self clippingBounds 
				during: aBlock ] 
		ifFalse: [ aBlock value ]
