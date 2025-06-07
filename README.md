# Anilist API Automation Project

## Description
This project automates interactions with the Anilist API using curl commands. It includes examples of both positive and negative API requests to fetch anime data, search for anime, and retrieve user information.

## Required Packages
- **curl**: For making HTTP requests to the Anilist API.
- **jq**: For formatting JSON output (optional but recommended for readability).

## Installation
1. Install curl (if not already installed):
   ```bash
   sudo apt-get install curl
   ```

2. Install jq (optional, for prettier JSON output):
   ```bash
   sudo apt-get install jq
   ```

## Usage
1. Set your Anilist API key in a `.env` file:
   ```
   ANILIST_API_KEY=your_api_key_here
   ```

2. Load the environment variable:
   ```bash
   export $(grep ANILIST_API_KEY .env)
   ```

3. Run the script:
   ```bash
   ./anilist.sh
   ```

## Scripts
- `anilist.sh`: Contains curl commands for interacting with the Anilist API, including examples for fetching anime data, searching, and handling error cases.

## Notes
- Ensure your API key is valid and has the necessary permissions.
- The script includes both positive and negative test cases to demonstrate API behavior.
- ** Currently this does not need any API key.