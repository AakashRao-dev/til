#!/bin/bash

# Navigate to your local repository
cd /c/Users/aakas/Desktop/til

# Add all changes
git add .

# Commit changes with a message
commit_message="Auto-commit: $(date '+%Y-%m-%d %H:%M:%S')"
git commit -m "$commit_message"

# Push changes to the repository
git push origin main