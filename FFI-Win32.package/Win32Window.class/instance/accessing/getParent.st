getParent
	| wnd |
	wnd := self apiGetParent: self.
	^wnd handle = 0 ifTrue:[nil] ifFalse:[wnd]