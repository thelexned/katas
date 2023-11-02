#!/bin/bash

# Check for required commands
command -v python3 >/dev/null 2>&1 || { echo >&2 "Python is required but it's not installed. Exiting."; exit 1; }
command -v pip >/dev/null 2>&1 || { echo >&2 "pip is required but it's not installed. Exiting."; exit 1; }

# Check if the virtual environment already exists
if [ ! -d "venv" ]; then
  # Create a virtual environment
  python3 -m venv venv || { echo >&2 "Virtual environment creation failed. Exiting."; exit 1; }
fi

# Activate the virtual environment
source venv/bin/activate || { echo >&2 "Activating virtual environment failed. Exiting."; exit 1; }

# Install dependencies
pip install -q -r requirements.txt || { echo >&2 "Installing dependencies failed. Exiting."; exit 1; }

echo "Script completed successfully."
