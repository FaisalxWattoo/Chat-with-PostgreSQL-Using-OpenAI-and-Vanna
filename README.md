![Architecture](https://github.com/FaisalxWattoo/Chat-with-PostgreSQL-Using-OpenAI-and-Vanna/blob/main/Images/vannaaiflask.png)

... 
# Chat with PostgreSQL Using OpenAI and Vanna
====================================================

## Overview
This application demonstrates how to build a natural language chat interface for querying PostgreSQL databases using OpenAI's API and the vanna library. Users can ask questions in natural language, and Vanna interprets these as SQL queries, allowing easy data exploration without requiring SQL knowledge.

## Setup Instructions
---------------

### Obtain an API Key
Register with OpenAI to obtain an API key for querying the model. The API key will enable secure access to OpenAI's language model.

### Configure Environment Variable
```plaintext
Update `.env` in the project directory with:
OPENAI_API_KEY=<your-api-key>
```

### Install Required Libraries
Ensure your environment is prepared by installing the necessary dependencies:
```bash
pip install -r requirements.txt
```

### Run the Notebook
Activate the Streamlit application using:
```bash
jupyter notebook chatwithpostgres.ipynb
```
