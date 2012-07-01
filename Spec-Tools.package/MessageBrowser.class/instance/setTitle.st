private
setTitle
		
	window ifNotNil: [ window title: self title , ' [' , listModel listSize printString , ']']