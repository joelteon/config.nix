{ cabal, deepseq, hspec, QuickCheck, quickcheckInstances, text
, textIcu
}:

cabal.mkDerivation (self: {
  pname = "text-normal";
  version = "0.2.1.0";
  sha256 = "10cxvn450q2fdjxly72m20x2yikkvwx3dvyqs7b992c2dr1zc1iv";
  buildDepends = [ deepseq text textIcu ];
  testDepends = [ hspec QuickCheck quickcheckInstances ];
  meta = {
    homepage = "https://github.com/joelteon/text-normal.git";
    description = "Unicode-normalized text";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
