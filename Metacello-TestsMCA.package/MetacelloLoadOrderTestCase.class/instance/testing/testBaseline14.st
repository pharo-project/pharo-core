testBaseline14
	"test for http://code.google.com/p/metacello/issues/detail?id=90"
	| loadedPackages project loader |
	project := self class new project.
	loader := (project version: '1.4-baseline') load: #('Example-3' 'Example-2' 'Example-1').
	loadedPackages := loader loadedPackages asArray.

	self assert: (loadedPackages indexOf: 'Example-Core') > 0.

	self assert: (loadedPackages indexOf: 'Example-GemStone300-Core')
			> (loadedPackages indexOf: 'Example-Core').
	self assert: (loadedPackages indexOf: 'Example-GemStone-Core')
			> (loadedPackages indexOf: 'Example-GemStone300-Core').
	self assert: (loadedPackages indexOf: 'Example-3')
			> (loadedPackages indexOf: 'Example-GemStone-Core').
