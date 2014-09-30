titleOrIconOf: aPresentation in: container
	^ aPresentation hasTitleIcon 
		ifTrue: [
			| image |
			image := self theme 
					newImageIn: container
					form: aPresentation titleIconValue.
			aPresentation titleValue ifNotNil: [
				image setBalloonText: aPresentation titleValue maxLineLength: 100 ].
			image  ]
		ifFalse: [ aPresentation titleValue ifNil: [''] ]