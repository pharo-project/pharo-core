uninitializedVariable: variableNode
	variableNode binding markRead.
	variableNode propertyAt: #semanticWarning put: #unitialized.