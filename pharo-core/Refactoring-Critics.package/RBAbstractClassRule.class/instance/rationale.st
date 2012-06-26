accessing
rationale
	^ 'Checks for references to classes that have subclassResponsibility methods. Such references might be creating instances of the abstract class or more commonly being used as the argument to an isKindOf: message which is considered bad style.'