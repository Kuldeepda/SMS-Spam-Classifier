#!/bin/bash

# Create Streamlit config directory
mkdir -p ~/.streamlit/

# Write Streamlit config
echo "\
[server]\n\
headless = true\n\
port = \$PORT\n\
enableCORS = false\n\
" > ~/.streamlit/config.toml

# Install NLTK FIRST
pip install nltk

# Create nltk_data folder
mkdir -p nltk_data

# Download punkt and stopwords to nltk_data
python -m nltk.downloader -d nltk_data punkt stopwords
