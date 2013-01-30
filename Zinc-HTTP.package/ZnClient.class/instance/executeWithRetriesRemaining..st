private protocol
executeWithRetriesRemaining: retryCount
	^ [ self executeWithRedirectsRemaining: self maxNumberOfRedirects ]
		on: NetworkError, ZnParseError
		do: [ :exception |
			retryCount > 0
				ifTrue: [
					self 
						handleRetry: exception;
						executeWithRetriesRemaining: retryCount - 1 ]
				ifFalse: [
					exception pass ] ]