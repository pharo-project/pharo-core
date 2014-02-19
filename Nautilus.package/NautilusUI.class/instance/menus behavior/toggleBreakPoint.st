toggleBreakPoint
	| savedSelectedMethodIndex savedVscroll |

	self selectedMethod 
		ifNotNil: [ :meth | 
			savedSelectedMethodIndex := methodWidget selectedMethodIndex.
			savedVscroll := methodWidget vScrollValue.
			self toggleBreakOnEntryIn: meth.
			self update.
			methodWidget selectedMethodIndex: savedSelectedMethodIndex.
			savedVscroll := methodWidget vScrollValue: savedVscroll.
			 ].
		