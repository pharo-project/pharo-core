as yet unclassified
DefWindowProcW

	^ NBExternalAddress value: (NativeBoost loadSymbol: #DefWindowProcW fromModule: #user32)