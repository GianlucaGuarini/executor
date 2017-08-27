VERSION:=$(v)

test: test/Spec.hs
	@ cabal test

clean:
	@ cabal clean
	@ rm -rf **/*.o **/*.hi

install:
	@ cabal install hspec doctest

release:
	@ sed -i '' 's/\(^version:\)[^\n].*/\1'$(VERSION)'/' *.cabal
	@ cabal sdist
	@ cabal check
	@ cabal upload $(shell find dist/*$(VERSION).tar.gz)

.PHONY: test clean