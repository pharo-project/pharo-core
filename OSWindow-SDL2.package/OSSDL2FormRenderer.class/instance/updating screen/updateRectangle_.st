updateRectangle: rectangle
	| intersection sdlRectangle bitsAndOffset pitch x y w h |
	intersection :=  rectangle intersect: (0@0 corner: window extent) ifNone: [^ self ].
	self onRenderThreadBlocking: [
		self validate ifFalse: [ ^ self ].
	
		x := intersection left asInteger.
		y := intersection top asInteger.
		w := intersection width asInteger.
		h := intersection height asInteger.
		sdlRectangle := SDL_Rect newX: x y: y w: w h: h.
			
		pitch := form width * 4. 
		bitsAndOffset := NBBufferWithOffset new buffer: form bits; offset: y*pitch+(x*4).
		
		texture updateTextureRect: sdlRectangle formBits: bitsAndOffset pitch: pitch.
	
		"texture updateTexturePixels: form bits pitch: form width * 4."
		deferUpdates ifFalse: [
			renderer copy: texture srcRect: sdlRectangle dstRect: sdlRectangle.
			"renderer copy: texture."
			renderer present.
		]
	]