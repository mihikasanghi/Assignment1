#!/bin/bash
grep -v '^[[:space:]]*$' quotes.txt | awk '!mihika[$0]++' | awk -F"~" '{ print $2 " once said, " "\"" $1 "\"" }' > speech.txt
