emitting code
pushAsValue: gen

	gen asm push: (gen proxy positive32BitValueOf: (loader emitLoad: gen))