Usage: test [<package> ...]
	<package> a String matching a package name
	
Examples:
	#Run all the tests in the Tests-Exceptions package
	$PharoVM Foo.image test Tests-Exceptions
	#Run all the tests in packages matching Test-.*
	$PharoVM Foo.image test "Tests-.*"
	