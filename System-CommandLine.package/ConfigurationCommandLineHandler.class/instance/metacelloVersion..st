actions
metacelloVersion: aVersionName
	^ [ self project version: aVersionName ] 
		on: MetacelloVersionDoesNotExistError do: [:error| 
			self project version: aVersionName asSymbol ].