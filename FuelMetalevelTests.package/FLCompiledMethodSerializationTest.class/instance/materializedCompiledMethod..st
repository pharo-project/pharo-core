running
materializedCompiledMethod: aCompiledMethod

	| materializedCompiledMethod |
	materializedCompiledMethod := self resultOfSerializeAndMaterializeMethod: aCompiledMethod.

	self deny: aCompiledMethod == materializedCompiledMethod.
	"CompiledMethod>>= is too strict for us, so we check equality in this way. For example, we cannot assert about the source code because it depends on the FLCompiledMethodTrailerEncoder if it encodes or not the source. "
	self assert: aCompiledMethod header = materializedCompiledMethod header.
	self assert: aCompiledMethod initialPC = materializedCompiledMethod initialPC.
	self assert: aCompiledMethod sizeWithoutTrailer = materializedCompiledMethod sizeWithoutTrailer.
	^ materializedCompiledMethod