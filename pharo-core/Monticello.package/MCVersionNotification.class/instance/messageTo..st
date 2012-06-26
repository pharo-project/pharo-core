as yet unclassified
messageTo: aString
	| message |
	message := MailMessage empty.
	message setField: 'from' toString: self fromAddress.
	message setField: 'to' toString: aString.
	message setField: 'subject' toString: '[MC] ', version info name.
	message body: (MIMEDocument contentType: 'text/plain' content: self messageText).
	^ message