NBExternalEnumerationType reifies the enum declarations in C and offers a nice interface (especially in terms of debug/inspect).
To use it just subclass the NBExternalEnumeration and add an #enumDecl method to the class side such as:

NBExternalEnumeration subclass: #NBTestEnumeration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NativeBoost-Tests'

NBTestEnumeration class>>enumDecl
	^ {(#AAA -> 1).
	(#BBB -> 2).
	(#CCC -> 3).
	(#DDD -> 2400)} asDictionary 

DO NOT FORGET to call the #initialize method on your class. The rest is automatically done ;)

You can use your new enum in two ways:
	- add it to a client class poolDictionaries list (see  #NBExternalEnumTests for an example), 
		and then just write CCC in your code -- CCC here is an item of your enum
	- send the name of an item to your class --- NBTestEnumeration DDD

The NBExternalEnumeration implements  (instance and class) some more API methods like:
	#itemAt: retrieves the item having a specific value  --- NBTestEnumeration itemAt: 2
	#includes: checks the existence of a specific item in the enum --- NBTestEnumeration includes: #AAA