This class is used to store help icons for the help browser. 

Typically one implements a method returning a 12x12 Form instance which
should not be called directly.

Since the class provides an internal icon cache (so the icons can be reused without 
creating too many new instances) the icons should be accessed using the #iconNamed: 
message with the method selector as argument.

To create a form from an icon file stored on disk you can use the following code:

   | image stream |
	image := ColorForm fromFileNamed: '/path/to/icon.png'.
	stream := WriteStream with: String new.
	image storeOn: stream.
	stream contents inspect.