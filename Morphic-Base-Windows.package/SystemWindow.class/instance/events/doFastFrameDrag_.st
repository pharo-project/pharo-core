doFastFrameDrag: grabPoint
	"Do fast frame dragging from the given point"

	(MorphFrameGhost forDragging: self clickedAt: grabPoint) openInWorld
