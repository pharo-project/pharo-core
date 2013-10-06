submit
	| message |
	"submit the message"
	textEditor
		ifNotNil: [self hasUnacceptedEdits ifTrue: [textEditor accept]].
	message := MailMessage from: messageText asString.
	self breakLinesInMessage: message.
	SMTPClient deliverMailFrom: message from to: (Array with: message to) text: message text usingServer: self smtpServer.

	morphicWindow ifNotNil: [morphicWindow delete].
