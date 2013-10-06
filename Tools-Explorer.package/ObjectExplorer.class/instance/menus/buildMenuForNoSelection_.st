buildMenuForNoSelection: aMenu 
	^ aMenu
		add: '*nothing selected*'
		target: self
		selector: #yourself
