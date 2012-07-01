Main comment stating the purpose of this class and relevant relationship to other classes.


   Some parsers allow the scheme name to be present in a relative URI if
   it is the same as the base URI scheme.  This is considered to be a
   loophole in prior specifications of partial URI [RFC1630]. Its use
   should be avoided.

      http:g        =  http:g           ; for validating parsers
                    |  http://a/b/c/g   ; for backwards compatibility
