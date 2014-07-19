{ cabal, async, conduit, monadControl, transformers, wai
, waiWebsockets, websockets, yesodCore
}:

cabal.mkDerivation (self: {
  pname = "yesod-websockets";
  version = "0.1.1.2";
  sha256 = "01h2xlgk7n5if178y3w6rcxsh9xbgynqm4kpci3776iq2yxm21nw";
  buildDepends = [
    async conduit monadControl transformers wai waiWebsockets
    websockets yesodCore
  ];
  meta = {
    homepage = "https://github.com/yesodweb/yesod";
    description = "WebSockets support for Yesod";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
