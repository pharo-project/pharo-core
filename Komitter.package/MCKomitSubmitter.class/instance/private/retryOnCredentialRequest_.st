retryOnCredentialRequest: aBlock

	aBlock on: MCPermissionDenied do: [ :error | |credentials| 
		credentials := MCCredentialsRequest 
							signalUrl: self repository location
							username: self repository user
							password: self repository password.
		credentials 
			ifNotNil: [ 
				self repository credentials: credentials.
				^ self retryOnCredentialRequest: aBlock ]]