message sends
isMessage: selector sentInClass: aClass 
	^(self allSendersOf: selector inClass: aClass) notEmpty 