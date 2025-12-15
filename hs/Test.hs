{-# LANGUAGE ForeignFunctionInterface #-}
module Main where

import Foreign.Ptr

foreign import ccall unsafe secp256k1_selftest :: IO ()

main :: IO ()
main = secp256k1_selftest
