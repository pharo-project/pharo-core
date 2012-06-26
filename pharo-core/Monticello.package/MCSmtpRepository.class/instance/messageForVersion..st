as yet unclassified
messageForVersion: aVersion
	| message data |
	message := MailMessage empty.
	message setField: 'from' toString: MailSender userName.
	message setField: 'to' toString: email.
	message setField: 'subject' toString: (self subjectForVersion: aVersion). 

	message body:
		(MIMEDocument
			contentType: 'text/plain'
			content: (self bodyForVersion: aVersion)).

	"Prepare the gzipped data"
	data := RWBinaryOrTextStream on: String new.
	aVersion fileOutOn: data.
	message addAttachmentFrom: data reset withName: aVersion fileName.
	^ message