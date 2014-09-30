outerPortEvent: aPortEvent
	self announce: (GLMContextChanged new
				presentation: self; 
				property: aPortEvent portName; 
				value: aPortEvent value; 
				oldValue: aPortEvent oldValue; 
				yourself)