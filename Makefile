test: test.hs
	@ cabal test

clean:
	rm -rf *.o *.hi test

.PHONY: test clean