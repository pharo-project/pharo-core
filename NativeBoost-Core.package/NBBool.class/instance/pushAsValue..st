emitting code
pushAsValue: gen

	gen asm push: (gen proxy booleanValueOf: (loader emitLoad: gen)).
