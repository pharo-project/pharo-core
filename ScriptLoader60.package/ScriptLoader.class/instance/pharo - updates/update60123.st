update60123
	"self new update60123"
	self withUpdateLog: '18105 Introduction of FullBlockClosure (2) Adding the FullBlockClosure class
	https://pharo.fogbugz.com/f/cases/18105

18503  Introduction of FullBlockClosure (3) Moving code from CompiledMethod to CompiledCode
	https://pharo.fogbugz.com/f/cases/18503'.
	self loadTogether: self script60123 merge: false.
	
fullClosure := Smalltalk at: #FullBlockClosure ifAbsent: [ nil ].
self
	assert: fullClosure notNil
	description: 'need to load the FullBlockClosure class first'.

"Sets the SmallClassIndex of FullBlockClosure."
fullClosure tryPrimitive: 161 withArgs: #(38 true).
self
	assert: fullClosure basicIdentityHash = 38
	description: 'primitive fail, incompatible VM'.
	self flushCaches.
