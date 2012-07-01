message sends
isMessage: selector sentInClassCategory: category 
	^(self allSendersOf: selector inClassCategory: category) notEmpty 