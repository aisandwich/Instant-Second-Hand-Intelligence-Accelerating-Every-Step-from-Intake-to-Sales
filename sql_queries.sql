CREATE SCHEMA `bigqueryai-building-future.images_data`
OPTIONS(location='US');

CREATE EXTERNAL TABLE `bigqueryai-building-future.images_data.second_hand_images`
WITH CONNECTION `US.second_hand_conn`
OPTIONS(
  object_metadata = 'SIMPLE',
  uris = ['gs://second-hand-clothes-zenodo-8386668/clothes_images/*.jpg']
);

SELECT uri, content_type, size, updated
FROM `bigqueryai-building-future.images_data.second_hand_images`
LIMIT 5;


CREATE EXTERNAL TABLE `bigqueryai-building-future.images_data.clothes_meta`
OPTIONS(
  format = 'JSON',
  uris = ['gs://second-hand-clothes-zenodo-8386668/clothers_meta_single_file/clothes_meta_all.jsonl']
);

SELECT *
FROM `bigqueryai-building-future.images_data.clothes_meta`
LIMIT 5;