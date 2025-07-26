#!/bin/bash

# Create streamlit config
mkdir -p ~/.streamlit/
echo "\
[server]\n\
headless = true\n\
port = \$PORT\n\
enableCORS = false\n\
" > ~/.streamlit/config.toml

# Create nltk_data folder
mkdir -p nltk_data

# Download punkt and stopwords to nltk_data
python -m nltk.downloader -d nltk_data punkt stopwords
