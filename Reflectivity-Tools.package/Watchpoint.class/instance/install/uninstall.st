uninstall
	node hasWatchpoint ifFalse: [ ^self ].
	link uninstall.
	Watchpoint allWatchpoints removeKey: node.