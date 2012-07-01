*morphic-windows
closeAllWindowsDiscardingChanges
	World systemWindows do: [:w | [w delete] valueSupplyingAnswer: false]