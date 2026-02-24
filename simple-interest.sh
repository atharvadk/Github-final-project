#!/bin/bash

# Simple Interest Calculator Bash Script
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "---------------------------------------"
echo "      Simple Interest Calculator       "
echo "---------------------------------------"

# Input: Principal Amount
echo -n "Enter the Principal amount: "
read p

# Input: Rate of Interest
echo -n "Enter the annual Rate of Interest (in %): "
read r

# Input: Time Period
echo -n "Enter the Time period (in years): "
read t

# Calculation using 'bc' for floating-point arithmetic
# This ensures accuracy if interest rates or principal have decimals
s_interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc -l)
total_amount=$(echo "scale=2; $p + $s_interest" | bc -l)

echo "---------------------------------------"
echo "Results:"
echo "Interest Earned: $s_interest"
echo "Total Amount (P + I): $total_amount"
echo "---------------------------------------"
