A LinkedList is a sequential collection of objects where adjecent objects are linked by pointer. Using the message sequence addFirst:/removeLast causes the receiver to behave as a stack; using addLast:/removeFirst causes the receiver to behave as a queue.

A LinkedList can be used to hold two different kinds of objecs: 
  (a) Objects inheriting frm Link
  (b) Any objects.

If you attempt to add any object into a LinkedList that is not a Link, it will automatically be wrapped by a ValueLink. A LinkedList therefore behaves very much like any collection, except that certain calls such as atIndex: are linear rather than constant time.