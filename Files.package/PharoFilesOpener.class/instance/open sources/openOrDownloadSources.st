openOrDownloadSources
	| sources |
	(sources := self openSources)
		ifNil: [ 
			[ Smalltalk downloadSources	"this method only exists when Zinc is loaded" ]
				on: MessageNotUnderstood
				do: [ ^ nil ].
			sources := self openSources ].
	^ sources