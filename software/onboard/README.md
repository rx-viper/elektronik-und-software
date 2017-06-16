## Onboard software

The main software is located in `src/`.
Any hardware component tests will be placed in `tests/`.

Board-specific configuration is done in `hardware_rev1.hpp` and is included from both main software and test software (`#include "../hardware_rev1.hpp` / `#include "../../hardware_rev1.hpp`).


## xpcc

To use this software you have to put a clone of the [xpcc git repository](https://github.com/roboterclubaachen/xpcc) in the same directory as this `rexus-viper-elektronik` repository.


## documentation
Documentation and flow charts can be found in docs/software/onboard folder.
