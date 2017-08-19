# executor
Haskell module to execute single or multiple shell commands

[![Build Status][travis-image]][travis-url]
[![MIT License][license-image]][license-url]

# API

## execSync

Execute a single shell command

```hs
import Executor (execSync)

main = do
  -- execute a simple `ls` in the current folder
  execSync "ls"
```

## execListSync

Execute a list of shell commands in sequence synchronously

```hs
import Executor (execListSync)

main = do
  -- execute synchronously the following commands
  execListSync [
      "ls",
      "whoami",
      "echo hello"
    ]
```

[travis-image]:https://img.shields.io/travis/GianlucaGuarini/executor.svg?style=flat-square
[travis-url]:https://travis-ci.org/GianlucaGuarini/executor

[license-image]:http://img.shields.io/badge/license-MIT-000000.svg?style=flat-square
[license-url]:LICENSE
