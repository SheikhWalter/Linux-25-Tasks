#!/bin/bash

echo -n "Enter your name: "
read name
echo -n "Enter your age: "
read age
echo -n "Enter your favourite programming language: "
read language

echo "Thank you, $name! Your profile has been created successfully with the following details:"
echo "- Name: $name"
echo "- Age: $age"
echo "- Favorite Programming Language: $language"