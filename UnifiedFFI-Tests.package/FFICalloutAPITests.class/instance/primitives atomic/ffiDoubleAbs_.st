ffiDoubleAbs: number 
	^ self ffiCall: #( double fabs (double number) )