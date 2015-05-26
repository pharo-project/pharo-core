environ
	"Return the address of the array holding the environment variables"
	^ NBExternalAddress value: ((NativeBoost loadSymbol: 'environ' fromModule: NativeBoost CLibrary) nbUInt32AtOffset: 0)