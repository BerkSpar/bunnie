const app_name = "RABBITED";

const version = "0.0.2t";
/*
version meaning
t - test version
b - beta version
a - alpha version

first number - alpha
second number - beta
thirth number - alpha
*/

const Map<String, dynamic> naruto_json = {
  "id": "11",
  "type": "anime",
  "user": {"finished": true, "episode": 43, "rating": 5},
  "links": {"self": "https://kitsu.io/api/edge/anime/11"},
  "attributes": {
    "createdAt": "2013-02-20T16:00:24.797Z",
    "updatedAt": "2020-06-05T20:53:16.273Z",
    "slug": "naruto",
    "synopsis":
        "Moments prior to Naruto Uzumaki's birth, a huge demon known as the Kyuubi, the Nine-Tailed Fox, attacked Konohagakure, the Hidden Leaf Village, and wreaked havoc. In order to put an end to the Kyuubi's rampage, the leader of the village, the Fourth Hokage, sacrificed his life and sealed the monstrous beast inside the newborn Naruto.\r\nNow, Naruto is a hyperactive and knuckle-headed ninja still living in Konohagakure. Shunned because of the Kyuubi inside him, Naruto struggles to find his place in the village, while his burning desire to become the Hokage of Konohagakure leads him not only to some great new friends, but also some deadly foes.\r\n[Written by MAL Rewrite]",
    "coverImageTopOffset": 209,
    "titles": {"en": "Naruto", "en_jp": "Naruto", "ja_jp": "ナルト"},
    "canonicalTitle": "Naruto",
    "abbreviatedTitles": ["NARUTO"],
    "averageRating": "78.84",
    "ratingFrequencies": {
      "2": "470",
      "3": "4",
      "4": "425",
      "5": "11",
      "6": "425",
      "7": "11",
      "8": "1773",
      "9": "26",
      "10": "2261",
      "11": "51",
      "12": "5061",
      "13": "171",
      "14": "11342",
      "15": "339",
      "16": "9130",
      "17": "459",
      "18": "5278",
      "19": "215",
      "20": "15882"
    },
    "userCount": 90352,
    "favoritesCount": 2553,
    "startDate": "2002-10-03",
    "endDate": "2007-02-08",
    "nextRelease": null,
    "popularityRank": 42,
    "ratingRank": 760,
    "ageRating": "PG",
    "ageRatingGuide": "Teens 13 or older",
    "subtype": "TV",
    "status": "finished",
    "tba": "",
    "posterImage": {
      "tiny":
          "https://media.kitsu.io/anime/poster_images/11/tiny.jpg?1417705323",
      "small":
          "https://media.kitsu.io/anime/poster_images/11/small.jpg?1417705323",
      "medium":
          "https://media.kitsu.io/anime/poster_images/11/medium.jpg?1417705323",
      "large":
          "https://media.kitsu.io/anime/poster_images/11/large.jpg?1417705323",
      "original":
          "https://media.kitsu.io/anime/poster_images/11/original.jpg?1417705323",
      "meta": {
        "dimensions": {
          "tiny": {"width": null, "height": null},
          "small": {"width": null, "height": null},
          "medium": {"width": null, "height": null},
          "large": {"width": null, "height": null}
        }
      }
    },
    "coverImage": {
      "tiny": "https://media.kitsu.io/anime/cover_images/11/small.jpg",
      "small": "https://media.kitsu.io/anime/cover_images/11/small.jpg",
      "large": "https://media.kitsu.io/anime/cover_images/11/small.jpg",
      "original": "https://media.kitsu.io/anime/cover_images/11/original.jpg",
      "meta": {
        "dimensions": {
          "tiny": {"width": 840, "height": 200},
          "small": {"width": 1680, "height": 400},
          "large": {"width": 3360, "height": 800}
        }
      }
    },
    "episodeCount": 220,
    "episodeLength": 23,
    "totalLength": 5060,
    "youtubeVideoId": "j2hiC9BmJlQ",
    "showType": "TV",
    "nsfw": false
  },
  "relationships": {
    "genres": {
      "links": {
        "self": "https://kitsu.io/api/edge/anime/11/relationships/genres",
        "related": "https://kitsu.io/api/edge/anime/11/genres"
      }
    },
    "categories": {
      "links": {
        "self": "https://kitsu.io/api/edge/anime/11/relationships/categories",
        "related": "https://kitsu.io/api/edge/anime/11/categories"
      }
    },
    "castings": {
      "links": {
        "self": "https://kitsu.io/api/edge/anime/11/relationships/castings",
        "related": "https://kitsu.io/api/edge/anime/11/castings"
      }
    },
    "installments": {
      "links": {
        "self": "https://kitsu.io/api/edge/anime/11/relationships/installments",
        "related": "https://kitsu.io/api/edge/anime/11/installments"
      }
    },
    "mappings": {
      "links": {
        "self": "https://kitsu.io/api/edge/anime/11/relationships/mappings",
        "related": "https://kitsu.io/api/edge/anime/11/mappings"
      }
    },
    "reviews": {
      "links": {
        "self": "https://kitsu.io/api/edge/anime/11/relationships/reviews",
        "related": "https://kitsu.io/api/edge/anime/11/reviews"
      }
    },
    "mediaRelationships": {
      "links": {
        "self":
            "https://kitsu.io/api/edge/anime/11/relationships/media-relationships",
        "related": "https://kitsu.io/api/edge/anime/11/media-relationships"
      }
    },
    "characters": {
      "links": {
        "self": "https://kitsu.io/api/edge/anime/11/relationships/characters",
        "related": "https://kitsu.io/api/edge/anime/11/characters"
      }
    },
    "staff": {
      "links": {
        "self": "https://kitsu.io/api/edge/anime/11/relationships/staff",
        "related": "https://kitsu.io/api/edge/anime/11/staff"
      }
    },
    "productions": {
      "links": {
        "self": "https://kitsu.io/api/edge/anime/11/relationships/productions",
        "related": "https://kitsu.io/api/edge/anime/11/productions"
      }
    },
    "quotes": {
      "links": {
        "self": "https://kitsu.io/api/edge/anime/11/relationships/quotes",
        "related": "https://kitsu.io/api/edge/anime/11/quotes"
      }
    },
    "episodes": {
      "links": {
        "self": "https://kitsu.io/api/edge/anime/11/relationships/episodes",
        "related": "https://kitsu.io/api/edge/anime/11/episodes"
      }
    },
    "streamingLinks": {
      "links": {
        "self":
            "https://kitsu.io/api/edge/anime/11/relationships/streaming-links",
        "related": "https://kitsu.io/api/edge/anime/11/streaming-links"
      }
    },
    "animeProductions": {
      "links": {
        "self":
            "https://kitsu.io/api/edge/anime/11/relationships/anime-productions",
        "related": "https://kitsu.io/api/edge/anime/11/anime-productions"
      }
    },
    "animeCharacters": {
      "links": {
        "self":
            "https://kitsu.io/api/edge/anime/11/relationships/anime-characters",
        "related": "https://kitsu.io/api/edge/anime/11/anime-characters"
      }
    },
    "animeStaff": {
      "links": {
        "self": "https://kitsu.io/api/edge/anime/11/relationships/anime-staff",
        "related": "https://kitsu.io/api/edge/anime/11/anime-staff"
      }
    }
  }
};
