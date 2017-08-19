HC=ghc -O

test: test.hs
	@ $(HC) test.hs
	@ ./test

clean:
	rm -rf *.o *.hi test

.PHONY: test clean