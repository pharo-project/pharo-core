warnUser
	"Warn the user about the possible content loss"

	^ UIManager confirm: 'This will replace the current workspace content.', String cr, 'Do you want to continue?' translated