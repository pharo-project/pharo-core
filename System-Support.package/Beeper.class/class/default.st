customize
default
	"When the default is not defined it is
	initialized using #newDefault."

	default isNil 
		ifTrue: [default := self newDefault ].
	^ default