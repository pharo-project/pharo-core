add: anObject executor: executor
	| item |
	
	"fool protection"
	anObject ifNil: [ self error: 'nil cannot be finalized!!'].
	
	sema critical: [
		item := self getFreeItem.
		item object: anObject executor: executor
	].
	^ item