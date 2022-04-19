#!/bin/bash
grep -v '^[[:space:]]*$' quotes.txt | awk '!mihika[$0]++' > /dev/stdout

