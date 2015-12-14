getInputFocus
	| focus revert |
	focus := WordArray new: 1.
	revert := WordArray new: 1.
	self XGetInputFocus: self with: focus with: revert.
	^ X11Window new xid: focus first