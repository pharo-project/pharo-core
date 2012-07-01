accessing
classVersion
	"Default.  Any class may return a later version to inform readers that use ReferenceStream.  8/17/96 tk"
	"This method allows you to distinguish between class versions when the shape of the class 
	hasn't changed (when there's no change in the instVar names).
	In the conversion methods you usually can tell by the inst var names 
	what old version you have. In a few cases, though, the same inst var 
	names were kept but their interpretation changed (like in the layoutFrame).
	By changing the class version when you keep the same instVars you can 
	warn older and newer images that they have to convert."
	^ 0