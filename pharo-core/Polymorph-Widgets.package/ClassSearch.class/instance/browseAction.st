button behavior
browseAction
	| tmp |
	tmp := answer.
	[ tmp browse ] fork.
	self cancel