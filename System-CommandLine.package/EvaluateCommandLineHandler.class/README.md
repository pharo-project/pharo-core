A CommandLineHandler that reads a string from the command line and outputs the evaluated result.

This handler either evaluates the arguments passed to the image:
	$PHARO_VM my.image eval  1 + 2
	
or it can read directly from stdin:

	echo "1+2" | $PHARO_VM my.image eval 