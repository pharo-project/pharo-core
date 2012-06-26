A ThumbnailImageMorph is variant of Lex Spoon's CDScreenShotMorph. It displays a thumbnail of the image stored in imagePopupMorph. As a super class of PopupThumbnail morph it is meant to be a thumbnail w/o the popup action. Basicly it provides a scalable thumbnail with the usual morph event behaviors.

A menu item allows for "photographing" any morph on the screen to become the subject of our images.

Instance Variables
	imagePopupMorph:		<anImageMorph>
	image: 					<aForm>
	desiredExtent			<aPoint>
	isPopup					<aBool>
imagePopupMorph
	- an ImageMorph containing the full sized image.
	- it can be set from a morph image via the sight target menu item.
image
	- holds the scaled thumbnail form of our imagePopupMorph image.
desiredExtent
	- holds the desired extent that the thumbnail is expected to fit within.
	- it is guarded to be positive and non-zero.
	- it can be set by extent: so that the yellow halo handle works.
isPopup
	- true when popup feature is on.
	- toggled from red halo menu
		
Setting the size of the thumbnail works somewhat excentrically because the extent of the thumbnail depends both on the desiredExtent and the aspect ratio of the current popup image.
 
With the popup feature off this morph can be picked up and dropped with the mouse.
When the feature is on, a full sized snapshot will be seen when the mouse is pressed.
Since the mouse can't be used for two things at once, moving the morph must be done with the grab halo or brown move halo.