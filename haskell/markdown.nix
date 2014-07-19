{ cabal, attoparsec, attoparsecConduit, blazeHtml, conduit
, conduitExtra, dataDefault, hspec, systemFileio, systemFilepath
, text, transformers, xssSanitize
}:

cabal.mkDerivation (self: {
  pname = "markdown";
  version = "0.1.8";
  sha256 = "1cbf552zivpymkzhgzqh87vpb1jqz8scbibl4jwh7ij5jl3k1nmq";
  buildDepends = [
    attoparsec attoparsecConduit blazeHtml conduit conduitExtra
    dataDefault text transformers xssSanitize
  ];
  testDepends = [
    blazeHtml conduit conduitExtra hspec systemFileio systemFilepath
    text transformers
  ];
  meta = {
    homepage = "https://github.com/snoyberg/markdown";
    description = "Convert Markdown to HTML, with XSS protection";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
