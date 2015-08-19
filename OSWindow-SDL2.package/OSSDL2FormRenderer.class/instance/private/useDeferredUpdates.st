useDeferredUpdates
	self onRenderThreadBlocking: [
		renderer copy: texture;
				present.
	]