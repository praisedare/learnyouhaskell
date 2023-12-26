# Polymorphic DataTypes
As you already know, this is how to create a simple datatype:
```hs
data Result = Excellent | Good | Fair | Bad
```

But what if we want out type constructors to carry a value? Like a length datatype for instance?```hs
data Length = Meters Int | Feet Int
```

But there's a problem with our `Length` datatype. It can only accept `Int`. How can we make it take `Fractional`s, `Rational`s, or other `Num`eric types? The answer... with `Type Parameters`:
```hs
data Length a = Meters a | Feet a
```

Now our `Length` datatype is fully polymorphic. You might be wondering why we didn't do:
```hs
data (Num a) => Length a = Meters a | Feet a
```

That's because you can't use type constraints on Type parameters. The only place we can use them is when we're creating instances for the datatype.

# Creating type constrained instances
Naturally, we'd want to be able to perform simple arithmetic operations on the `Length`s such as addition and subtraction. For example: `Meters 34.5 + Meters 34.5`.
As we already know, to implement an instance of class A in datatype B we use the form:
```hs
instance TypeClass DataType where
    typeClassMethod1 = (...)
    ...
```

But this wouldn't be correct:
```hs
instance Num Length where
    ...
```

Because our `Length` datatype is parametrically constrained (polymorphic), we have to include it's type parameters too.

## The correct notation
When creating an instance of a datatype with type parameters:
```hs
-- You must list out all of its type parameters
instance TypeClass (DataType a b) where
```

When a datatype parameter is constrained:
```hs
instance (TypeClass a) => DataType a where
```
And so combining them together:
```hs
instance (Num a) => Num (Length a) where
```
Perfection.

