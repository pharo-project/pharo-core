numberSelectors
	^ packages inject: 0 into: [ :result :package | result + package methods size ]