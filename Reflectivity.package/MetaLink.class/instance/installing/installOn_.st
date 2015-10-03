installOn: aNode 
	| methodNode |
	nodes add: aNode.
	"set meta link options defined per class"
	methodNode := aNode methodNode.
	
	methodNode methodClass 
		compiledMethodAt: #metaLinkOptions 
		ifPresent: [:method | self options: ((method valueWithReceiver: nil arguments: #()) asDictionary at:  methodNode selector ifAbsent: [#()])] 
		ifAbsent: [].
	"set meta link options defined per method"
	(methodNode pragmas select: [ :pragma | pragma selector == #metaLinkOptions:]) 
		do: [ :pragma | pragma asPragma sendTo: self ].
		
	