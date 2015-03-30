spotterCriticsPreviewIn: aComposite
	<spotterPreview: 10>
	self hasCriticsResults ifFalse: [ ^ self ].
	aComposite text
		title: 'Problems';
		display: [ 
			String streamContents: [ :stream | 
				self result smallLintCritics do: [ :each | 
					each printOn: stream. 
					stream cr ] ] ];
		entity: self.