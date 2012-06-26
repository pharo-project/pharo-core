as yet unclassified
loadAllFileNames
	^ (directory entries sort: [:a :b | a modificationTime >= b modificationTime]) collect: [:ea | ea basename]