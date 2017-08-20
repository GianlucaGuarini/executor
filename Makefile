VERSION:=$(v)

test: test.hs
	@ cabal test

clean:
	@ rm -rf *.o *.hi test

release:
	@ sed -i '' 's/\(^version:\)[^\n].*/\1'$(VERSION)'/' *.cabal
	@ cabal sdist
	@ cabal check
	@ cabal upload $(shell find dist/*$(VERSION).tar.gz)

.PHONY: test clean