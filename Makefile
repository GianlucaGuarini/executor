VERSION:=$(v)

test: test/Spec.hs
	@ stack test

clean:
	@ stack clean
	@ rm -rf **/*.o **/*.hi

release:
	@ sed -i '' 's/\(^version:\)[^\n].*/\1'$(VERSION)'/' *.cabal
	@ stack sdist
	@ stack upload .

.PHONY: test clean