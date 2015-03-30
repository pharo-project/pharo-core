spotterActDefault
	" #withClassesFixedForNautilus: Nautilus UI cannot browse a metaclass if the class is not within the environment. The checkbox is only a show/hide-toggle between class and metaclass. Previous browsers could do that. Not an RB problem, but we have to fix it there. "
	self flag: #refactoringViolationForSpotterActDefault:.
	self hasCriticsResults ifFalse: [ ^ super spotterActDefault ].
	(self result withClassesFixedForNautilus browse) ui title: self name