convertAlarms
	
	alarms ifNotNil: [alarms sortBlock: self alarmSortBlock].	"ensure cleaner block"

