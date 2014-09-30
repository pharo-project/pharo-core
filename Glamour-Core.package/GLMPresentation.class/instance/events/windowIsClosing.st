windowIsClosing 
	| event |
	self announce: (event := GLMBrowserClosing new).
	self withAllPresentations do: [ :each | each announce: event ]