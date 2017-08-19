HC=ghc -O

build: Executor.hs
	@ ghc Executor.hs

test: test.hs
	@ $(HC) test.hs
	@ ./test

.PHONY: build