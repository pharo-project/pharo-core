as yet unclassified
sortedVersionInfos
	layers := OrderedCollection with: OrderedCollection new.
	depthIndex := 1.
	depths := Dictionary new.
	roots do: [:ea | self processVersionInfo: ea].
	^ layers gather: [:ea | ea]