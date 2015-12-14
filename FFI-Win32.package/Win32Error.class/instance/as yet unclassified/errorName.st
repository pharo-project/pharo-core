errorName

	^(ErrorCodes at: errorCode) at: 1 ifAbsent: ['ERROR_UNKNOWN_' , errorCode ]