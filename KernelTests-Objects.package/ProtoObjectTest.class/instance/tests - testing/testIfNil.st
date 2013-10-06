testIfNil
	
	| object block |
	object := ProtoObject new.
	self shouldnt: [ object ifNil: [ self halt ]] raise: Halt.
	self assert: (object ifNil: [ nil ]) == object.
	"Now the same without inlining."
	block := [ self halt ].
	self shouldnt: [ object ifNil: block ] raise: Halt.
	block := [ nil ].
	self assert: (object ifNil: block) == object.
	
