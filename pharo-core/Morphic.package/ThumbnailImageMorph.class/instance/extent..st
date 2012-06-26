accessing
extent: anExtentPoint
"Set the desired extetnt for the thumbnail. It is guarenteed to fit within the desired extent.
The desitedExtent is guarded to prevent deviant forms from being attempted."

self changed . "We might be bigger before we change."
desiredExtent := anExtentPoint guarded.
self newThumbnail: imagePopupMorph image .
