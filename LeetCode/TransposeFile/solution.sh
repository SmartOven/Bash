#!/bin/bash
awk '{
for (i = 1; i <= NF; i++) { num[NR][i] = $i }
}
END {
	for (i = 1; i <= NF; i++) {
		for (j = 1; j <= NR; j++) {
			printf "%s", num[j][i]
			if (j < NR) { printf "%s", " "}
		}
		if (i < NF) { print '\n' }
	}
}' file.txt