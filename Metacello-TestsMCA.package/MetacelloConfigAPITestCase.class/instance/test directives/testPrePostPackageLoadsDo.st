testPrePostPackageLoadsDo
	| project version loader loadDirective preloaded count pkgloaded postloaded |
	project := self project.

	version := project version: '1.0-baseline'.
	loader := version fetch.
	loadDirective := loader loadDirective.
	pkgloaded := postloaded := preloaded := false.
	loadDirective directivesDo: [:directive |
		directive preLoadDo: [:pre |
			self deny: preloaded.			 
			self deny: pkgloaded.
			self deny: postloaded.
			preloaded := true.
			self assert: (#preloadForCore == pre spec preLoadDoIt value) ].
		directive packageDo: [:pkg | 
			preloaded ifTrue: [ 
				self deny: postloaded.
				pkgloaded := true.
				pkg spec name = 'Example-Core' ]].
		directive postLoadDo: [:post | 
			self assert: preloaded.			 
			self assert: pkgloaded.
			self deny: postloaded.
			preloaded := false.
			postloaded := true.
			self assert: (#postloadForCore:package: == post spec postLoadDoIt value) ]].
	self assert: postloaded