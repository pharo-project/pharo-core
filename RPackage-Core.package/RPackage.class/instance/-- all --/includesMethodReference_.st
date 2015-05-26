includesMethodReference: aMethodRef

	self flag: 'includesMethod:ofClass: is not implemented for RPackage. Should fine fine a corresponding one '.
	self flag: #stef. "We can inline this one and replace it by selector and others."
	^ self includesMethod: aMethodRef selector ofClass: aMethodRef actualClass
	"^ self includesDefinedSelector: aMethodRef selector ofClass: aMethodRef actualClass"