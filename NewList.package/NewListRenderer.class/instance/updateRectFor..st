drawing - private
updateRectFor: index

	self flag: 'Could be optimized'.
	self listSource changed.
	
	"| item  |
	index isZero
		ifFalse: [
			item := self itemAtIndex: index. 
			self invalidRect:  (self selectionFrameForItem: item at: index) ]"