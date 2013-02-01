emitting code
pushAsValue: gen
	"should we truncate it to 8bit value here?"
	gen asm push: (gen proxy integerValueOf: (loader emitLoad: gen) )	

	