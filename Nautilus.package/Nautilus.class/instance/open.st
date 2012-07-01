displaying
open

	ui := (self uiClass on: self) open.
	self announce: (NautilusWindowOpened window: ui window)