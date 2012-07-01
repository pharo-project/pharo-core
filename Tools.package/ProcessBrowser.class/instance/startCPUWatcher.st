initialization
startCPUWatcher
	"Answers whether I started the CPUWatcher"

	| pw |
	pw := Smalltalk globals at: #CPUWatcher ifAbsent: [ ^ self ].
	pw
		ifNotNil: [ 
			pw isMonitoring
				ifFalse: [ 
					pw startMonitoringPeriod: 5 rate: 100 threshold: 0.85.
					self setUpdateCallbackAfter: 7.
					^ true ] ].
	^ false