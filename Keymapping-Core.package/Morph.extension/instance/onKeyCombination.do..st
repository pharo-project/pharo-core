*Keymapping-Core
onKeyCombination: aShortcut do: anAction
	self kmDispatcher on: aShortcut asShortcut do: anAction