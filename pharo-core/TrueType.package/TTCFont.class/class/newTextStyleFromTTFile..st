instance creation
newTextStyleFromTTFile: fileName
	"Create a new TextStyle from specified file name.  On certain versions of Windows, you can evaluate following to get Arial font into the image.  On other platforms, wait and see someone implements the support code for FontPlugin then we can start relying on the generic font lookup mechanism.
	TTCFontReader encodingTag: 0.
	self newTextStyleFromTTFile: 'C:\WINDOWS\Fonts\symbol.TTF'.
	"

	| description |
	description := TTFontDescription addFromTTFile: fileName.
	^ self newTextStyleFromTT: description.
