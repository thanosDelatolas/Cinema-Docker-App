#! /bin/bash

# restore data storage mogno db!!!
#import movies
mongoimport --host mongo_db_data_storage --db cinema_db --collection Movies --type json --file /mongo-seed/data_storage_mongo/movies/movies.json --jsonArray

#import cinemas
mongoimport --host mongo_db_data_storage --db cinema_db --collection Cinemas --type json --file /mongo-seed/data_storage_mongo/cinemas/cinemas.json --jsonArray

#import favorites
mongoimport --host mongo_db_data_storage --db cinema_db --collection Favorites --type json --file /mongo-seed/data_storage_mongo/favorites/favorites.json --jsonArray

#import feed
mongoimport --host mongo_db_data_storage --db cinema_db --collection Feed --type json --file /mongo-seed/data_storage_mongo/feed/feed.json --jsonArray

#import Subscriptions
mongoimport --host mongo_db_data_storage --db cinema_db --collection Subscriptions --type json --file /mongo-seed/data_storage_mongo/Subscriptions/Subscriptions.json --jsonArray

#restore orion mongo database!!!
mongoimport --host mongo_db_orion --db orion --collection entities --type json --file /mongo-seed/orion_mongo/entities.json --jsonArray

mongoimport --host mongo_db_orion --db orion --collection csubs --type json --file /mongo-seed/orion_mongo/csubs.json --jsonArray