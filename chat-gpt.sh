#!/bin/bash

# Prompt the user for their API token
read -p "Enter your ChatGPT API token: " API_TOKEN

# Prompt the user for their ChatGPT prompt
read -p "Enter your ChatGPT prompt: " PROMPT

# Make the API call to ChatGPT using the user's API token and prompt
curl -H "Authorization: Bearer $API_TOKEN"        
     -d '{"prompt":"'$PROMPT'",
           "userID":"anon",
           "maxTokens":150}'       
     https://api.chatgpt.com/v1/openai/complete
