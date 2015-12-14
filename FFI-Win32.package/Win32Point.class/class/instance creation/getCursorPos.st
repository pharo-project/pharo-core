getCursorPos
	| pt |
	pt := self new.
	self apiGetCursorPos: pt.
	^pt