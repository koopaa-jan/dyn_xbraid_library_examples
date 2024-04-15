#!/bin/bash

DIRECTORY_PATH="./"
NAME_START="ex-h_e_2D.out."

OUTPUT_FILE_BASE="comp_out"

counter=0
output_file="${OUTPUT_FILE_BASE}_${counter}.txt"

while [ -e "$output_file" ]; do
	let counter++
	output_file="${OUTPUT_FILE_BASE}_${counter}.txt"
done

for file in ${NAME_START}*; do
	# Skip if there are no matching files
	[ -e "$file" ] || continue
	# Skip if the pattern matches the output file name
	[[ "$file" == "$OUTPUT_FILE_BASE"* ]] && continue

	cat "$file" >> "$output_file"
	rm "$file"
done
