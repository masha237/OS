#!/bin/bash

./1.sh
at now + 1 minutes < ./1.sh

tail -n 0 -f ~/report
