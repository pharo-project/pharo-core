signaling
signalWithSelector: aSelector
	^ self signal: aSelector asString, ' can not be serialized as global because it is not installed. You need FuelMetalevel to fully serialize methods. See the documentation. '