showDateTimePropertiesTimezone
	"
	self showDateTimePropertiesTimezone
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL timedate.cpl,,/f'