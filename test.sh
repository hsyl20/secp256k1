#!/bin/sh

set -euo pipefail

rm -rf test_dir
mkdir test_dir

cabal sdist
cd test_dir
tar xf ../dist-newstyle/sdist/secp256k1-clib-0.7.1.tar.gz
cd secp256k1-clib-0.7.1
cabal test -f "+ecdh +ellswift +extrakeys +musig +recovery +schnorrsig"
