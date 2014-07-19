{ cabal, esqueleto, hspec, monadLogger, persistent
, persistentSqlite, resourcePool, resourcet, shakespeare
, utf8String, waiTest, yesod, yesodTest
}:

cabal.mkDerivation (self: {
  pname = "yesod-pagination";
  version = "1.1.0.0";
  sha256 = "0wq8lkvswq2fsvpw0qgdx8c9g8xparqzd1fdi62g4qmw9vnpw3s9";
  buildDepends = [ esqueleto yesod ];
  testDepends = [
    hspec monadLogger persistent persistentSqlite resourcePool
    resourcet shakespeare utf8String waiTest yesod yesodTest
  ];
  meta = {
    homepage = "https://github.com/joelteon/yesod-pagination";
    description = "Pagination in Yesod";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
