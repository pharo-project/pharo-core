updateRectangle: rectangle
	| intersection sdlRectangle |
	intersection :=  rectangle intersect: (0@0 corner: window extent) ifNone: [^ self ].
	self onRenderThreadBlocking: [
		self validate ifFalse: [ ^ self ].
	
		texture updateTexturePixels: form bits pitch: form width * 4.
		sdlRectangle := SDL_Rect newX: intersection left asInteger y: intersection top asInteger w: intersection width asInteger h: 		intersection height asInteger.
		renderer copy: texture.
		renderer present.
	]