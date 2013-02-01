updating - private
retrieveSelectedItems

	^ self selectedIndexes collect: [:e | self rawItemAtIndex: e ]