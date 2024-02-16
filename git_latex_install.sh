#!/bin/bash

# Function to check if a command is available
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check if LaTeX is installed
if command_exists pdflatex; then
    echo "LaTeX is already installed."
else
    echo "LaTeX is not installed. Installing..."
    sudo apt update
    sudo apt install texlive-full
    echo "LaTeX has been installed successfully."
fi

# Check if Git is installed
if command_exists git; then
    echo "Git is already installed."
else
    echo "Git is not installed. Installing..."
    sudo apt update
    sudo apt install git
    echo "Git has been installed successfully."
fi

# Check if Hub is installed to create repos
if command_exists hub; then
    echo "Hub is already installed."
else
    echo "Hub is not installed. Installing..."
    sudo apt update
    sudo apt install hub
    echo "Hub has been installed successfully."
fi


