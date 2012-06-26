downloading
activate
	"Activate a Celeste window for the receiver"

	MailSender sendMessage: (MailMessage from: self composeText)