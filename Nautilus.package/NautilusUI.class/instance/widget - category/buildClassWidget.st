buildClassWidget
	| classesList |
	classesList := classWidget buildClassesList.
	self setShortcuts: #NautilusMethodShortcuts to: classesList.
	^ classesList