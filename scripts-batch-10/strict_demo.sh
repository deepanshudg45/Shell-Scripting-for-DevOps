#!/bin/bash

set -euo pipefail

echo "Demo: Set -euo pipefail"

# 1. Undefined variable (set -u)

echo "Accessing undefined variable: "
ehco "${UNDEFINED_VAR}"

# 2. Failing Command

echo "This will not execute if above fails."
false

# 3. Pipe Failure (set -o pipefail)

echo "Testing pipe failure: "
cat nonexistingfile | grep "text"

echo "End of script"
