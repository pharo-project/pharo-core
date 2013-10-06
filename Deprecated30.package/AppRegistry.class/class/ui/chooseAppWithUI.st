chooseAppWithUI

	default := UIManager default 
		chooseFrom: (self registeredClasses collect: [:c | c name]) 
		values: self registeredClasses 
		title: ('Which ' , self appName, ' would you prefer?') translated.
	default ifNil: [default := self registeredClasses first].
	WorldState defaultWorldMenu. 
	^ default.