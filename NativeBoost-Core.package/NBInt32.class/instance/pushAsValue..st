emitting code
pushAsValue: gen

	gen asm push: (gen proxy signed32BitValueOf: (loader emitLoad: gen) )