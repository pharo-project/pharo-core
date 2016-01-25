adoptAddress: anExternalAddress
	1 to: self size do: [ :index | 
		self basicAt: index put: (anExternalAddress at: index) ]