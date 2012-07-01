I represent a two-dimensional array, rather like Array2D.
There are three main differences between me and Array2D:
(1) Array2D inherits from ArrayedCollection, but isn't one.  A lot of things that should work
    do not work in consequence of this.
(2) Array2D uses "at: column at: row" index order, which means that nothing you write using
    it is likely to work either.  I use the almost universal "at: row at: column" order, so it is
    much easier to adapt code from other languages without going doolally.
(3) Array2D lets you specify the class of the underlying collection, I don't.

Structure:
  nrows : a non-negative integer saying how many rows there are.
  ncols : a non-negative integer saying how many columns there are.
  contents : an Array holding the elements in row-major order.  That is, for a 2x3 array
    the contents are (11 12 13 21 22 23).  Array2D uses column major order.

    You can specify the class of 'contents' when you create a new Array2D,
    but Matrix always gives you an Array.

    There is a reason for this.  In strongly typed languages like Haskell and Clean,
    'unboxed arrays' save you both space AND time.  But in Squeak, while
    WordArray and FloatArray and so on do save space, it costs time to use them.
    A LOT of time.  I've measured aFloatArray sum running nearly twice as slow as
    anArray sum.  The reason is that whenever you fetch an element from an Array,
    that's all that happens, but when you fetch an element from aFloatArray, a whole
    new Float gets allocated to hold the value.  This takes time and churns memory.
    So the paradox is that if you want fast numerical stuff, DON'T use unboxed arrays!

    Another reason for always insisting on an Array is that letting it be something
    else would make things like #, and #,, rather more complicated.  Always using Array
    is the simplest thing that could possibly work, and it works rather well.

I was trying to patch Array2D to make more things work, but just couldn't get my head
around the subscript order.  That's why I made Matrix.

Element-wise matrix arithmetic works; you can freely mix matrices and numbers but
don't try to mix matrices and arrays (yet).
Matrix multiplication, using the symbol +* (derived from APL's +.x), works between
(Matrix or Array) +* (Matrix or Array).  Don't try to use a number as an argument of +*.
Matrix * Number and Number * Matrix work fine, so you don't need +* with numbers.

Still to come: oodles of stuff.  Gaussian elimination maybe, other stuff probably not.
