titleOrIconOf: aPresentation in: container
	^ aPresentation hasTitleIcon 
		ifTrue: [
			| image |
			image := GLMInteractableBrick new
						normalImage: aPresentation titleIconValue.
			image layoutProperties maxWidthBlock: [ :aTrick | aPresentation titleIconValue width * 2 ].
			aPresentation titleValue ifNotNil: [
				image setBalloonText: aPresentation titleValue maxLineLength: 100 ].
			image  ]
		ifFalse: [ aPresentation titleValue ifNil: [''] ]