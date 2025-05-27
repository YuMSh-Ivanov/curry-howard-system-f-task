{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE ImpredicativeTypes #-}

module CurryHoward (c1, c2, c3, c4) where
import Prelude hiding (Either)

-- Important note: it's difficult to work with ImpredicativeTypes, see
-- https://wiki.haskell.org/index.php?title=Impredicative_types#:~:text=However%2C%20impredicative%20types%20do%20not%20mix%20very%20well%20with%20Haskell%27s%20type%20inference%2C%20so%20to%20actually%20use%20the%20above%20function%20with%20GHC%207.6.1%20you%20need%20to%20specify%20the%20full%20(unpleasant)%20type%20signature
-- Sometimes you need to speify type explicitly

type Pair a b = forall p. (a -> b -> p) -> p

type Either a b = forall p. (a -> p) -> (b -> p) -> p

c1 :: forall a b. Pair a b -> Either a b
c1 ???

c2 :: forall a b c. Pair (Pair (a -> c) (b -> c)) (Either a b) -> c
c2 ???

c3 :: forall a b c. (Either b c -> a) -> Pair (b -> a) (c -> a)
c3 ???

-- Don't forget about the note above
c4 :: forall a b c. Pair a (Either b c) -> Either (Pair a b) (Pair a c)
c4 ???
