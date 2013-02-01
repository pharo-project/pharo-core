*Deprecated20
label: shortDescription min: minValue max: maxValue
	self deprecated: 'Use show:from:to:' on: '22 May 2012' in: 'Pharo 2.0'.

	^ self show: (shortDescription contractTo: 100) from: minValue asFloat to: maxValue asFloat.