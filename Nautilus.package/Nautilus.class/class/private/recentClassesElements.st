recentClassesElements
	"self recentClassesElements"
	| res |
	res := OrderedCollection new. 
	self recentClasses mostViewedElements do: [ :each | Smalltalk globals at: each ifPresent: [ :cls| res add: cls ]].
	^ res
