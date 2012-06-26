system compatibility
includesMethodReference: aMethodRef

	self flag: 'includesMethod:ofClass: is not implemented for RPackage. Should fine fine a corresponding one '.
	self flag: #stef. "We can inline this one and replace it by methodSymbol and others."
	^ self includesMethod: aMethodRef methodSymbol ofClass: aMethodRef actualClass
	"^ self includesDefinedSelector: aMethodRef methodSymbol ofClass: aMethodRef actualClass"