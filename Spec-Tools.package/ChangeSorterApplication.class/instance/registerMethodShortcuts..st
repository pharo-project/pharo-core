shortcuts
registerMethodShortcuts: aWidget

	aWidget on: $b command do: [ self selectedSelector ifNotNil:[ self browseMethodFull ]].
	aWidget on: $d command do: [ self selectedSelector ifNotNil:[ self forgetMessage ]].
	aWidget on: $m command do: [ self selectedSelector ifNotNil:[ self browseImplementorsOfMessages ]].
	aWidget on: $n command do: [ self selectedSelector ifNotNil:[ self browseSendersOfMessages ]].
	aWidget on: $v command do: [ self selectedSelector ifNotNil:[ self browseVersions ]].
	aWidget on: $x command do: [ self selectedSelector ifNotNil:[ self removeMessage ]].