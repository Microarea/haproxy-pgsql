# haproxy-pgsql
## Goal
Easily configuring a failover proxy between multiple PostgreSQL instances replicated with `repmgr`.

## Usage
See [docker-compose.yaml.example](https://github.com/Microarea/haproxy-pgsql/blob/main/docker-compose.yaml.example).

## Environment variables

| **Name**          | **Description**                                                                     |
|-------------------|-------------------------------------------------------------------------------------|
| `PG_MONITOR_USER` | Valid user on the PostgreSQL node(s); used to check if a node is primary or replica |
| `PG_MONITOR_PASS` | Password for `PG_MONITOR_USER`                                                      |
| `PG_MONITOR_DB`   | Login database for `PG_MONITOR_USER`                                                |
| `PG_NODES`        | Semicolon separated list of nodes                                                   |
