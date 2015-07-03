preamble
	| preamble |
	
	self flag: #TBD.
	"Very simplistic now: needs to do some optimizatons"
	
	preamble := OrderedCollection new.
	links do: [:link |  
		plugins do: [ :plugin | (link allReifications includes: plugin key) ifTrue: [preamble addAll: ((plugin node: node link: link) preamble: node)] ]].
	^preamble