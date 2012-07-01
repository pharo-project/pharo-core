downloading
composeText
	"Answer the template for a new message."

	^ String streamContents: [:str |
		str nextPutAll: 'From: '.
		str nextPutAll: MailSender userName; cr.
		str nextPutAll: 'To: '.
		str nextPutAll: locator asString; cr.

		str nextPutAll: 'Subject: '; cr.

		str cr].