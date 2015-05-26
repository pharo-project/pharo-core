showMouseProperties
	"
	self showMouseProperties
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL main.cpl @0,0'