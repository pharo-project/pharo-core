testing
isSmtpServerSet
	^ SmtpServer notNil and: [SmtpServer notEmpty]
