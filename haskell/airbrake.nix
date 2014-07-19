{ cabal, blazeMarkup, exceptions, filepath, httpConduit
, monadControl, network, semigroups, text, transformers, utf8String
, wai
}:

cabal.mkDerivation (self: {
  pname = "airbrake";
  version = "0.2.0.0";
  sha256 = "03z5hjrdwv8kjsj1vhipqhfmc19mi5cnjkcvcm71b0gmnpd71shq";
  buildDepends = [
    blazeMarkup exceptions filepath httpConduit monadControl network
    semigroups text transformers utf8String wai
  ];
  meta = {
    homepage = "https://github.com/joelteon/airbrake";
    description = "An Airbrake notifier for Haskell";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
