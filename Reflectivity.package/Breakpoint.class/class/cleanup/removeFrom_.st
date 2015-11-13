removeFrom: aNode
	| links |
	links := aNode beforeLinks select: [ :link | link metaObject = Break].
	links do: #uninstall.