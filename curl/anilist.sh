#!/bin/bash

# Example: Get user info
curl -H "Authorization: Bearer $ANILIST_API_KEY" -X POST https://graphql.anilist.co -H "Content-Type: application/json" -d '{"query": "{ Viewer { id name } }"}' | jq '.'

# Example: Get Media by idMal (negative case: non-existent idMal)
curl -X POST https://graphql.anilist.co -H "Content-Type: application/json" -d '{"query": "query ExampleQuery($idMal: Int) { Media(idMal: $idMal) { id idMal isAdult } }", "variables": { "idMal": 999999 }}' | jq '.'

# Example: Search for an anime (e.g., "Naruto")
curl -H "Authorization: Bearer $ANILIST_API_KEY" -X POST https://graphql.anilist.co -H "Content-Type: application/json" -d '{"query": "query ($search: String) { Media(search: $search, type: ANIME) { id title { romaji english native } } }", "variables": { "search": "Naruto" }}' | jq '.'

# Example: Get details of a specific anime by ID (e.g., 1)
curl -H "Authorization: Bearer $ANILIST_API_KEY" -X POST https://graphql.anilist.co -H "Content-Type: application/json" -d '{"query": "query ($id: Int) { Media(id: $id, type: ANIME) { id title { romaji english native } description } }", "variables": { "id": 1 }}' | jq '.'

# Example: Search for an anime (negative case: invalid search)
curl -X POST https://graphql.anilist.co -H "Content-Type: application/json" -d '{"query": "query ($search: String) { Media(search: $search, type: ANIME) { id title { romaji english native } } }", "variables": { "search": "" }}' | jq '.'

# Example: Get details of a specific anime by ID (negative case: invalid ID)
curl -X POST https://graphql.anilist.co -H "Content-Type: application/json" -d '{"query": "query ($id: Int) { Media(id: $id, type: ANIME) { id title { romaji english native } description } }", "variables": { "id": -1 }}' | jq '.'

# Example: Get Media by type (negative case: invalid type)
curl -X POST https://graphql.anilist.co -H "Content-Type: application/json" -d '{"query": "query ($type: MediaType) { Media(type: $type) { id title { romaji english native } } }", "variables": { "type": "INVALID_TYPE" }}' | jq '.'

# Example: Get Media by format (negative case: invalid format)
curl -X POST https://graphql.anilist.co -H "Content-Type: application/json" -d '{"query": "query ($format: MediaFormat) { Media(format: $format) { id title { romaji english native } } }", "variables": { "format": "INVALID_FORMAT" }}' | jq '.'

# Example: Get Media by idMal (positive case: valid idMal)
curl -X POST https://graphql.anilist.co -H "Content-Type: application/json" -d '{"query": "query ExampleQuery($idMal: Int) { Media(idMal: $idMal) { id idMal isAdult } }", "variables": { "idMal": 1 }}' | jq '.'

# Example: Search for an anime (positive case: valid search)
curl -X POST https://graphql.anilist.co -H "Content-Type: application/json" -d '{"query": "query ($search: String) { Media(search: $search, type: ANIME) { id title { romaji english native } } }", "variables": { "search": "Naruto" }}' | jq '.'