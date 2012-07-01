private
selectedItems

	| associations |
	associations := self listSelection associations select: [:assoc | assoc value ].
	^ associations collect: [:assoc | assoc key ].