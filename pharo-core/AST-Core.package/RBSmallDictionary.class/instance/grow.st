private
grow
	| newKeys newValues |
	newKeys := Array new: 2 * tally.
	newValues := Array new: 2 * tally.
	1 to: tally do: [ :index |
		newKeys at: index put: (keys at: index).
		newValues at: index put: (values at: index) ].
	keys := newKeys.
	values := newValues