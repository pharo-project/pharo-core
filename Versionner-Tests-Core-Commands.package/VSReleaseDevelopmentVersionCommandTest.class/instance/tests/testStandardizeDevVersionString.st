testStandardizeDevVersionString
	| cmd |
	cmd := VSReleaseDevelopmentVersionCommand new.
	self assert: (cmd standardizeDevVersionString: '1.0-baseline') equals: '1.0-baseline'.
	self assert: (cmd standardizeDevVersionString: 'baseline-1.3') equals: '1.3-baseline'.