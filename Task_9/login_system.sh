#!/bin/bash

echo -n "Enter your role: "
read role

case $role in
    "admin"|"Admin") 
        echo "Welcome, Admin! You have full access.";;
    "editor"|"Editor") 
        echo "Welcome, Editor! You can edit content.";;
    "viewer"|"Viewer") 
        echo "Welcome, Viewer! You can only view content.";;
    *) 
        echo "Invalid role. Please enter Admin, Editor, or Viewer.";;
esac