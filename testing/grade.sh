#!/bin/bash

read -p "Enter your exam score (0-100): " score

if [[ ! "$score" =~ ^[0-9]+$ ]]; then
  echo "Error: Invalid input. Please enter a number."
  exit 1
fi

if [[ "$score" -lt 0 || "$score" -gt 100 ]]; then
  echo "Error: Score must be between 0 and 100."
  exit 1
fi

if [[ "$score" -ge 90 ]]; then
  grade="A"
elif [[ "$score" -ge 80 ]]; then
  grade="B"
elif [[ "$score" -ge 70 ]]; then
  grade="C"
elif [[ "$score" -ge 60 ]]; then
  grade="D"
else
  grade="F"
fi

echo "Your grade is: $grade"
