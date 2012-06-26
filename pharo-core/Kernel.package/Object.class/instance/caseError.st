error handling
caseError
	"Report an error from an in-line or explicit case statement."

	self error: 'Case not found (', self printString, '), and no otherwise clause'