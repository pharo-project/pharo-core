m
	<gtExample>
	<label: 'Dummy #m'>
	<description: 'Dummy #m, with subjects Boolean and Number (returns true)'>
	<subjectsAll: 'Boolean Number, Date . Duration ; Float'>
	
	^ true & ( 1 == 1 ) & ( Date today = Date today ) & ( Duration seconds: 0 ) isZero & Float pi isFloat