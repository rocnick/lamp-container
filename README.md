
# LAMP Container

This project contains a basic LAMP stack built using docker containers, one for the web server and one for the database.

## Pre-Requisites

- You must have a docker daemon installed on your system.
- A .env file should be created in the root, containing the following, obviously replacing the values with your own:

```
DB_USER=yourUsername
DB_PASS=yourPassword
DB_ROOT_PASS=rootPassword
DEFAULT_DB=defaultDatabase
```

## How to Use

Once you've cloned the repository and handled the pre-requisites you can run the following commands to build and start your container(s).

#### Quick:
```
./start.sh
```

#### Step by Step:
```
docker network create lamp
./build.sh

docker compose up -d
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://github.com/rocnick/lamp-container?tab=MIT-1-ov-file#readme)

Feel free to use this as you see fit.