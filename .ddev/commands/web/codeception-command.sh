#!/bin/bash

## Description: Run a Codeception command.
## Usage: codecept [arguments]
## Example: ddev codecept run Acceptance or ddev codecept run Acceptance BasicPageCest --debug

echo -e "\n🤖 --- LIVE TESTS ---\n"
echo -e "To see the tests running live, visit ${DDEV_PRIMARY_URL}:7900 using the password \"secret\".\n"
echo -e "------\n"
vendor/bin/codecept "$@"
