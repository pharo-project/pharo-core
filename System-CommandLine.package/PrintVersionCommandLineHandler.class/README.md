Usage: printVersion
	
Documentation:
Prints the version number in an easy to parse format. This can be used in Jenkins with the "Description Setter" Plugin. Configure it like this:

Regular expression:  \[version\] (.*)
Description: \1


Examples:
	$PHAROVM Foo.image printVersion
	
result will be something like:

[version] 2.0 #20401