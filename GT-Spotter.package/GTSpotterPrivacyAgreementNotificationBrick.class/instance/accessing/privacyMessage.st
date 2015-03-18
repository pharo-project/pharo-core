privacyMessage

	^ self sendUsageData 
		ifTrue: [ 'You are sending anonymous usage data to help us improve Spotter. Thanks!' ]
		ifFalse: 	['No usage data is being sent. Would you like to send anonymous usage data to help us improve Spotter?']