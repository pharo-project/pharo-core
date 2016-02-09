ffiFloatAbs: number 
	^ self ffiCall: #( float fabsf (float number) )