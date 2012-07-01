coverage
selectorsToBeTested

	^ ( { self classToBeTested. self classToBeTested class } gather: [:c | c selectors]) 
			difference: self selectorsToBeIgnored