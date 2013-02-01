tests
testInstallFalsePositive
	| manifestBuilder |
	manifestBuilder := BuilderManifest on: MFClassA. .
	self deny: (manifestBuilder hasFalsePositiveOf: 'test' version: 0).
	manifestBuilder installFalsePositiveOf: 'test' version: 0.
	self assert: (manifestBuilder hasFalsePositiveOf: 'test' version: 0).
	self assert: (manifestBuilder falsePositiveOf: 'test' version: 0) notNil.
