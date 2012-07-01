pixel accessing
pixelValueAt: aPoint 
	"Return the raw pixel value at the given point. Typical clients use colorAt: to get a Color."
	"Details: To get the raw pixel value, be sure the peeker's colorMap is nil."

	^ (BitBlt current bitPeekerFromForm: self) colorMap: nil; pixelAt: aPoint
