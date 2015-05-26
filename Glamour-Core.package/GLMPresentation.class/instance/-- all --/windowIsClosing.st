windowIsClosing 
	| event |
	event := GLMBrowserClosing new.
	self withAllPresentations do: [ :each | each announce: event ]