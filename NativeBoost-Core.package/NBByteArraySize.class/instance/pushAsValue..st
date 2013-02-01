emitting code
pushAsValue: gen
	" push the array size "
	gen proxy slotSizeOf: (loader emitLoad: gen).
	gen asm push: gen asm EAX