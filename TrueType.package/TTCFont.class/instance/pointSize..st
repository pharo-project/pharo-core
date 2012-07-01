accessing
pointSize: aNumber

	self privatePointSize: aNumber.
	derivatives ifNotNil: [ derivatives do: [ :f | f ifNotNil: [ f privatePointSize: aNumber ]]].
