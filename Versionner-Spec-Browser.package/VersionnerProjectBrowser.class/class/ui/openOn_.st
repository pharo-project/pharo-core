openOn: configuration
	| browser |
	browser := self new. 
	browser configuration: configuration.
	browser openWithSpec.
	^ browser.