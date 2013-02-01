global addresses
reenterInterpreterAddress

	^ (NativeBoost loadSymbol: 'reenterInterpreter' fromModule: NativeBoost VMModule) value asUImm32 