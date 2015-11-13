removeAll
	| links |
	links := MetaLink allInstances select: [ :link | link metaObject = self].
	links do: #uninstall.