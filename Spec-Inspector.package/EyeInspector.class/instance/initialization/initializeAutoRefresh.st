initializeAutoRefresh
	
	refreshLoop := self useAutoRefresh
		ifTrue: [ [ 
			self refresh. 
			self hasWindow 
				ifFalse: [ refreshLoop terminate ] 
			] valueWithInterval: self updateTime ]