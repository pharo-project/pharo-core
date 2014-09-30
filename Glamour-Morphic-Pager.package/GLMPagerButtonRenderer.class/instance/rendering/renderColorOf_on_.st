renderColorOf: aGLMButton on: aCanvas
	|color|
	
	color := aGLMButton currentColor.
	color ifNotNil: [ aCanvas fillRectangle: aGLMButton bounds color: color ].