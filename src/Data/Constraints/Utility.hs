{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE UndecidableSuperClasses #-}

module Data.Constraints.Utility where

-- | Empty class constraint 
class Empty x
instance Empty x

-- | Mechanism for combining multiple (* -> Constraint) 
-- kinded items
class    (c a, d a) => (c :&: d) a
instance (c a, d a) => (c :&: d) a
infixl 7 :&:



