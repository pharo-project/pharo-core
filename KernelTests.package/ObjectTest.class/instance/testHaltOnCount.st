tests - debugging
testHaltOnCount

	| anObject |
	anObject := Object new.
	
	"Halts regardless of whether HaltOnce is false for the image"
	Halt disableHaltOnce.
	self shouldHaltWhen: [ anObject haltOnCount: 1 ].

	"Should halt if executed enough times"	
	self shouldHaltAfter: 2 times: [ anObject haltOnCount: 2 ].
	
	"Should not halt if not executed enough times"	
	self shouldntHaltAfter: 2 times: [ anObject haltOnCount: 3 ].
	Halt stopCounting.

	"Should ignore new count given while previous count is in progress"
	anObject haltOnCount: 2.
	self shouldHaltWhen: [ anObject haltOnCount: 5 ].