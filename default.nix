{ mkDerivation
, aeson
, base
, containers
, hpack
, hspec
, http-client
, pkgs
, process
, servant
, servant-client
, silently
, stdenv
, text
, time
}:

mkDerivation {
  pname = "toxiproxy-haskell";
  version = "0.2.1.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson
    base
    containers
    http-client
    servant
    servant-client
    text
  ];
  libraryToolDepends = [ hpack ];
  testDepends = [ pkgs.toxiproxy ];
  testHaskellDepends = [
    base
    containers
    hspec
    http-client
    process
    servant
    servant-client
    silently
    time
  ];
  preConfigure = "hpack";
  homepage = "https://github.com/jpittis/toxiproxy-haskell#readme";
  description = "Client library for Toxiproxy: a TCP failure testing proxy";
  license = stdenv.lib.licenses.bsd3;
}
