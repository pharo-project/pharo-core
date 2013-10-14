testBaseline31LoadAtomic
	"coverage for postload doits with linear load nested inside an atomic load"
	
	| project version |
	project := self project.
	version := project version: '3.1-baseline'.
	self shouldnt: [ version load ] raise: Error.
