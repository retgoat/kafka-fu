# Kafka-FU

Test app with rails, karafka gem, kafka running in docker

## Build & run

```
docker-compose up
```

## Example requests
Serializes params into YAML

```
curl --location --request POST 'http://localhost:3000/another' \
--header 'Content-Type: application/json' \
--data-raw '{
    "foo":"another"
}'
```

Prints out the parameters

```
curl --location --request POST 'http://localhost:3000/example' \
--header 'Content-Type: application/json' \
--data-raw '{
    "foo":"example"
}'
```

Sends an email

```
curl --location --request POST 'http://localhost:3000/email' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name":"Foo Bar",
    "email": "some@email.com"
}'
```


