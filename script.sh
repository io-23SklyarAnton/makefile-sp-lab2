#!/bin/bash
RAND_FILE="random_numbers.txt"

shuf -i 1-100 -n 5 > "$RAND_FILE"

echo "Згенеровані числа:"
cat "$RAND_FILE"

MIN_NUMBER=$(sort -n "$RAND_FILE" | head -n 1)

echo "$MIN_NUMBER" > "$RAND_FILE"

echo "Залишено найменше число: $MIN_NUMBER"
