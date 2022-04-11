#!/bin/bash
cat file.txt | awk 'BEGIN{FS="\n"; RS=""} {print $10}'
