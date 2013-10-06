open

	ui := (self uiClass on: self) open.
	self announce: (WindowOpened new window: ui window)