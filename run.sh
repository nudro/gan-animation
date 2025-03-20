#!/bin/bash

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null; then
    echo "Python 3 is required but not installed. Please install Python 3 and try again."
    exit 1
fi

echo "Starting GAN Visualization server at http://localhost:8000"
echo "Open your browser and navigate to: http://localhost:8000/panda_gan_visualization.html"
echo "Press Ctrl+C to stop the server"

# Start the server
python3 -m http.server 8000 