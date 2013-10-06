byteCodeItem

	^ DropListItem
		named: self byteCodeLabel
		do: [ wrapper := ByteCodeMethodConverter method: wrapper method ]