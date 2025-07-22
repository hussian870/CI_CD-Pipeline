#!/bin/bash
set -e

echo "Building the application..."

# Sample Node.js build (customize for your stack)
if [ -f package.json ]; then
  npm install
  npm run build
else
  echo "Nothing to build."
fi

echo "Build complete."
