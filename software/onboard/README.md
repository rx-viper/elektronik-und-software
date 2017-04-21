## Onboard software

The main software ist located in `src/`.
Any hardware component tests will be placed in `tests/`.

Board-specific configuration is done in `hardware_rev1.hpp` and is included from both main software and test software (`#include "../hardware_rev1.hpp` / `#include "../../hardware_rev1.hpp`).

#### documentation
Documentation and flow charts can be found in docs/software/onboard folder.
