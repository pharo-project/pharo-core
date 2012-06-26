A FileDirectory represents a folder or directory in the underlying platform's file system. It carries a fully-qualified path name for the directory it represents, and can enumerate the files and directories within that directory.

A FileDirectory can be thought of as a Dictionary whose keys are the local names of files in that directory, and whose values are directory "entries". Each entry is an array of five items:

	<name> <creationTime> <modificationTime> <dirFlag> <fileSize>

The times are given in seconds, and can be converted to a time and date via Time>dateAndTimeFromSeconds:. See the comment in lookupEntry:... which provides primitive access to this information.
