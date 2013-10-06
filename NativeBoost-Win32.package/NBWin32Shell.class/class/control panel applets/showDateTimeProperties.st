showDateTimeProperties
	"
	self showDateTimeProperties
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Timedate.cpl'