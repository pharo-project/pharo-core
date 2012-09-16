tests-trailer
testMethodWithEmptyTrailer
	"This test is for CompiledMethod which has an empty trailer. This is common and can happens. This means that they dont have a pointer to sources nor any other kind of source. When they are asked the source, they answer the decompiled one"
	| materializedCompiledMethod method |
	
	method := (self class >> #fortyTwoWithComments) copyWithTrailerBytes: CompiledMethodTrailer empty.
	self assert: 42 = (method valueWithReceiver: self arguments: #()).
	self deny: (method getSource includesSubstring: 'If I add comments to the method').
	self assert: method sourcePointer = 0.
	materializedCompiledMethod := self materializedCompiledMethod: method.
	self assert: 42 = (materializedCompiledMethod valueWithReceiver: self arguments: #()).