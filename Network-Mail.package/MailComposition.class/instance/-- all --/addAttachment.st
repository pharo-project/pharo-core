addAttachment
	|   fileSelected|
	textEditor
		ifNotNil: [self hasUnacceptedEdits ifTrue: [textEditor accept]].
	
	fileSelected := UIManager default chooseFileMatching: nil.
	fileSelected
		ifNil: [^ self].
		
	fileSelected writeStreamDo: [ :stream|
		stream binary.
		self messageText:
				((MailMessage from: self messageText asString)
					addAttachmentFrom: stream
					withName: fileSelected basename; 
					text;
					yourself)] 