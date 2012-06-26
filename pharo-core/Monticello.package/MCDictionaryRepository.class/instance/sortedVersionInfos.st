as yet unclassified
sortedVersionInfos
	| sorter |
	sorter := MCVersionSorter new.
	self allVersionInfos do: [:ea | sorter addVersionInfo: ea].
	^ sorter sortedVersionInfos
