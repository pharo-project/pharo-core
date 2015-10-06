importingIcon
	^ HelpTopic 
		title: 'Importing Icon'
		contents: 
'The easiest way to create icons from a bunch of .png pictures, is to use the facilities provided in ThemeIcons. Consider the following code snippet:

	ThemeIcons new createIconMethodsFromFile: ''lambda'' directory: ''/path/of/your/icons''

The expression above expect to have the file lambda.png in the directory /path/of/your/icons. After its execution, the method #lambdaIcon and #lambdaIconContents will be created in the class ThemeIcons. 
These two methods need to be packaged in your application. To do so, follow the steps:
1 - Create a protocol in the class ThemeIcons named *YourApplication, where YourApplication is the name of the package of your application. All the method that this protocol will contain will be part of your application
2 - Move the two methods (#lambdaIcon and #lambdaIconContents in our example) to this new protocol.

You can verify that the two methods are well packaged by browsing the package YourApplication and see the class extensions.

Accessing the icon may be done using:  ThemeIcons new lambdaIcon

ThemeIcons uses a cache to avoid constructing the icon at each access. You can reset the cache by evaluating: ThemeIcons new initializeIcons

In case you wish to reduce the size of the picture, you can simply using the following script:
-=-=-=--=-=-=--=-=-=-
f := ((Form fromFileNamed: ''/Users/alexandrebergel/Desktop/icons/lambda.png'' ) scaledToSize: 16 @ 16).
w := PNGReadWriter on: (''reduced.png'' asFileReference writeStream).
w nextPutImage: f.
w close
-=-=-=--=-=-=--=-=-=-
The file reduced.png will be created at the same location than the .image file.
 '