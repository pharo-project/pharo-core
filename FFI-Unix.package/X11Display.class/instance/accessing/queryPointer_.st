queryPointer: aX11Window
	| root child rootX rootY winX winY mask |
	root := WordArray new: 1.
	child := WordArray new: 1.
	rootX := WordArray new: 1.
	rootY := WordArray new: 1.
	winX := WordArray new: 1.
	winY := WordArray new: 1.
	mask := WordArray new: 1.
	self XQueryPointer: self window: aX11Window xid returnRoot: root child: child
		rootX: rootX rootY: rootY winX: winX winY: winY mask: mask.
	^{
		X11Window new xid: root first.
		X11Window new xid: child first.
		rootX first @ rootY first.
		winX first @ winY first.
		mask first}