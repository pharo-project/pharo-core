withEditedContentsDo: aValuable
	self
		announcerDo: [ :anncr | 
				anncr 
					subscribe: RubMorphEdited 
					send: #value: 
					to: [ :ann | aValuable cull: ann morph text asString ] ]