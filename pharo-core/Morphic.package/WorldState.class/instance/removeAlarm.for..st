alarms
removeAlarm: aSelector for: aTarget 
	"Remove the alarm with the given selector"

	| alarm |
	alarm := self alarms 
				detect: [:any | any receiver == aTarget and: [any selector == aSelector]]
				ifNone: [nil].
	alarm isNil ifFalse: [self alarms remove: alarm]