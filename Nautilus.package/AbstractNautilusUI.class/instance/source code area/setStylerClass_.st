setStylerClass: aClass
	self sourceTextModel reconfigureViewWith: [ :scrolledText | scrolledText textArea classOrMetaClass: aClass ]