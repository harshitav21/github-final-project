#!/bin/bash

# ---------------------------------------------------------
# Simple Interest Calculator
# ---------------------------------------------------------
# Description:
#   This script calculates simple interest based on:
#   - Principal amount (p)
#   - Annual rate of interest (r)
#   - Time period in years (t)
#
# Formula:
#   Simple Interest = (p * r * t) / 100
#
# Note:
#   This script is for educational purposes only.
#
# Author: Upkar Lidder (IBM)
# Additional Author: harshita21
# ---------------------------------------------------------

echo "----------------------------------------"
echo "        Simple Interest Calculator      "
echo "----------------------------------------"

# Read Principal
read -p "Enter the principal amount: " p

# Read Rate of Interest
read -p "Enter the annual rate of interest (%): " r

# Read Time Period
read -p "Enter the time period (in years): " t

# Validate inputs (basic numeric check)
if [[ -z "$p" || -z "$r" || -z "$t" ]]; then
    echo "Error: All inputs are required."
    exit 1
fi

# Calculate Simple Interest
simple_interest=$(expr $p \* $r \* $t / 100)

echo "----------------------------------------"
echo "Simple Interest = $simple_interest"
echo "----------------------------------------"
