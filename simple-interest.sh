#!/bin/bash
# Simple Interest Calculator
# Created by Peter Martin Berg for IBM Git/GitHub Final Project
# Formula: SI = (Principal × Rate × Time) / 100

echo "======================================"
echo "    SIMPLE INTEREST CALCULATOR"
echo "======================================"
echo ""

# Input Principal Amount
echo "Enter the Principal Amount (€):"
read -p "€ " principal

# Input Interest Rate
echo "Enter the Annual Interest Rate (%):"
read -p "% " rate

# Input Time Period
echo "Enter the Time Period (years):"
read -p "Years: " time

# Calculate Simple Interest
simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc -l)
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc -l)

echo ""
echo "======================================"
echo "           CALCULATION RESULT"
echo "======================================"
echo "Principal Amount: €$principal"
echo "Interest Rate: $rate% per year"
echo "Time Period: $time years"
echo "Simple Interest: €$simple_interest"
echo "Total Amount: €$total_amount"
echo "======================================"
