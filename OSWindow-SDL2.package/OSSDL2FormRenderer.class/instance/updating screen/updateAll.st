updateAll
	self onRenderThreadBlocking: [
		self validate ifFalse: [ ^ self ].

		texture updateTexturePixels: form bits pitch: form width * 4.
		renderer copy: texture.
		renderer present.
	]