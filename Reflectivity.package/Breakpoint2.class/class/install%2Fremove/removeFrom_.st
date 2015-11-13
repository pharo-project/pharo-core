removeFrom: aMethod
	| links |
	links := aMethod ast beforeLinks select: [ :link | link metaObject = self].
	links do: #uninstall.