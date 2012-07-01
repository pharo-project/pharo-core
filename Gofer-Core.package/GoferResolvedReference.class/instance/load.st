action
load
	"Load the receiver."
	
	Gofer new
		repository: self repository;
		package: package;
		version: self name;
		load
