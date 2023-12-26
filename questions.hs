-- I'll write questions I have about any Haskell topic in this file.
-- The answers – if I find any – will be placed directly under The
-- question. I will try to answer with valid Haskell code.

{- 1.
    I've seen how you can create instances of a typeclass for a datatype, but how
    do you do that for another typeclass?

    A: I think you (me) mean how can a typeclass extend another typeclass. It is a typeclass
       after all, and as such cannot have concrete definitions of methods. It can only add
       to the "contracts" defined by the typeclass it extends.
-}

{- 2.
    Can a typeclass also have values of its own just like datatypes have data
    constructors?
    A: Nope. Don't know why that question even popped up in my mind, but no.
-}


