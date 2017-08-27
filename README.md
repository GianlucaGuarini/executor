# executor
Haskell module to execute single or multiple shell commands

[![Build Status][travis-image]][travis-url]
[![MIT License][license-image]][license-url]

# API

## exec

Execute a single shell command returning its output

```hs
import Executor (exec)

main = do
  -- execute a simple `ls` in the current folder
  res <- exec "echo hi"
  -- hi\n
```

## execSequenceSync

Execute a list of shell commands in sequence synchronously returning their results in a list

```hs
import Executor (execSequenceSync)

main = do
  -- execute synchronously the following commands
  res <- execSequenceSync [
      "echo hi",
      "sleep 1",
      "echo goodbye"
    ]
  -- ["hi\n", "", "goodbye\n"]
```

[travis-image]:https://img.shields.io/travis/GianlucaGuarini/executor.svg?style=flat-square
[travis-url]:https://travis-ci.org/GianlucaGuarini/executor

[license-image]:http://img.shields.io/badge/license-MIT-000000.svg?style=flat-square
[license-url]:LICENSE
