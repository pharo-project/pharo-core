executeAction

	(self confirm:
'This action will cancel your changes.
Is it OK to cancel changes?' translated) ifTrue: [self debugger updateCodeEditor]