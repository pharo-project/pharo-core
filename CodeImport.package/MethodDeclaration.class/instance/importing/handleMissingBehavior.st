handleMissingBehavior
	"self error: ('Cannot install method in unexistent behavior {1}' format: {(behaviorName asString)})"
	
	(MissingClassError 
		className: behaviorName asString)
		signal