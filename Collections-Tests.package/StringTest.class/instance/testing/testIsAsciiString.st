testIsAsciiString
	"Non-regression for https://pharo.fogbugz.com/f/cases/15232 "
	self assert: '' isAsciiString = true.
	self assert: 'abcdefGHIJKL 98765,./@#%$' isAsciiString = true.

	self assert: 'È¿' isAsciiString = false.