{ cabal, stm, transformers }:

cabal.mkDerivation (self: {
  pname = "stm-lifted";
  version = "0.1.0.0";
  sha256 = "1x3yxxyik0vyh3p530msxh2a1aylmh8zab05qpq7nfl5m9v6v090";
  buildDepends = [ stm transformers ];
  meta = {
    description = "Software Transactional Memory lifted to MonadIO";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
