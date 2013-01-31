dispatching
keymapObservers
	| o |
	o := OrderedCollection with: self perInstanceTarget.
	o addAll: self targets.
	o addAll: self staticTargets.
	^ o