testLockSurface: handle pitch: pBuf x: x y: y w: w h: h

<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	NBFFICallout cdecl:  #( 	void *  (int handle, int *pBuf, int x, int y, int w, int h) ) emitCall: [:gen :proxy :asm | 
		asm
			mov: (self dispatchStruct lockSurfaceFn) asUImm32 to: asm EAX;
			call: asm EAX
		]

