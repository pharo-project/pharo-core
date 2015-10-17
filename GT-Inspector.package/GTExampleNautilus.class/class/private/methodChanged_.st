methodChanged: aCompiledMethod
	[	AbstractMethodWidget methodsIconsCache removeKey: aCompiledMethod. 
		NautilusUI allSubInstances do: #updateCategoryAndMethodList ]
			on: Error
			do: [ " ignore and continue " ]