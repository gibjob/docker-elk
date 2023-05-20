DELETE /nui.locations
PUT /nui.locations
{
  "settings": {
    "analysis": {
      "analyzer": {
        "autocomplete": {
          "tokenizer": "autocomplete",
          "filter": ["lowercase"]
        },
        "autocomplete_search": {
          "tokenizer": "lowercase"
        }
      },
      "tokenizer": {
        "autocomplete": {
          "type": "edge_ngram",
          "min_gram": 3,
          "max_gram": 10,
          "token_chars": [
            "letter", "digit"
          ]
        }
      }
    }
  },
  "mappings": {
    "properties": {
      "address.city": {
        "type":  "text",
        "store": true,
        "analyzer": "autocomplete",
        "search_analyzer": "autocomplete_search"
      }
    }
  }
}