dialogIsActiveFor: aTextArea
	^ self dialog world notNil and: [ textArea = aTextArea  ]