emitting code
pushAsValue: gen

	gen asm push: (gen proxy integerValueOf: (loader emitLoad: gen))