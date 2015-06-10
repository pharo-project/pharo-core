spotterPreviewIn: aComposite
	<spotterPreview: 10>
	
	self description ifEmpty: [ ^ self ].
	aComposite text
		title: [ 'Preview' ];
		display: [:aHelpTopic | 
			aHelpTopic description ];
		entity: self.