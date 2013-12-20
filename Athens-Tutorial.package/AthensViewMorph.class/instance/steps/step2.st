step2
"Step 2:

Creating a surface.

Protocol:

<SurfaceClass> extent: x@y

will create a surface using specific class.

All surfaces is conformant to AthensSurface protocol.

Example: 
"

surface := AthensCairoSurface extent: self extent asIntegerPoint.

"IMPORTANT NOTE:
	the surface which we will create at this step will be used in later steps.
	This means that if you resize the window (changing the view size), you may need to recreate surface.
	Also, since surface uses external resources, quitting an image and restarting it, will also require to 
	create a new surface, because the one from previous session will be no longer accessible.
"

