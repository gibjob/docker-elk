DELETE /nui.available_jobs
PUT /nui.available_jobs
{
  "mappings": {
    "properties": {
      "embeddings.53424.vector": {
        "type": "dense_vector",
        "dims": 768,
        "index": true,
        "similarity": "dot_product" 
      },
      "geohash": {
        "type": "geo_point"
      },
      "title": {
        "type":  "text",
        "store": true
      }
    },
    "_source": {
      "excludes": [
        "embeddings.32168_n.vector",
        "embeddings.32168.vector",
        "embeddings.53424.vector",
        "job_description_html"
      ]
    }
  },
  "settings": {
    "index": {
      "number_of_shards": 10,
      "number_of_replicas": 0,
      "refresh_interval": "-1"
    }
  }
}