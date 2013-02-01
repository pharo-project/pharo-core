Usage: test [--junit-xml-output] [<package> ...]
	--junit-xml-output    output the test results in a junit compatible format
	<package>             a String matching a package name
	
Examples:
	#Run all the tests in the Tests-Exceptions package
	$PharoVM Foo.image test Tests-Exceptions
	
	#Run all the tests in packages matching Test-.*
	$PharoVM Foo.image test "Tests-.*"
	
	# Run test on a Hudson/Jenkins server
	$PharoVM Foo.image test --junit-xml-output "Tests-.*"
	