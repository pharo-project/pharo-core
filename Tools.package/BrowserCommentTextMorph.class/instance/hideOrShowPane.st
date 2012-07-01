displaying
hideOrShowPane
	(self model editSelection == #editClass)
		ifTrue: [ self showPane ]
		ifFalse: [ self hidePane ]