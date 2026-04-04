# 📁 Create project structure

# Create source directory (main codebase folder)
mkdir -p src

# -------------------------------
# 📄 Create required project files
# -------------------------------

# Marks src as a Python package (required for imports)
touch src/__init__.py

# Helper functions (utility functions, reusable logic)
touch src/helper.py

# Prompt templates (used for LLM interactions / prompt engineering)
touch src/prompt.py

# Environment variables file (store API keys securely)
touch .env

# Setup file (used for packaging, dependencies, installable module)
touch setup.py

# Main application entry point (Flask app / API starts here)
touch app.py

# Script to create & store embeddings (Pinecone indexing)
touch store_index.py

# Research / experimentation notebook
mkdir -p research && touch research/demo.ipynb

# Confirmation message
echo "Directory and file created successfully!"