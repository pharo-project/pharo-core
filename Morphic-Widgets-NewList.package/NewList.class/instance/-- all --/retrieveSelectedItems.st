retrieveSelectedItems

	^ self selectedIndexes collect: [:e | self rawItemAtIndex: e ]