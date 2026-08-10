# Chumichev's Infrastructure

This repository contains Docker Compose configurations for self-hosted
services.

## Directory Structure

Each directory under `./services/` represents an independently deployable
service. Services may communicate with one another, but they must not depend on
being deployed together.

## Environment Variables

Environment variables that form the repository's external configuration
contract use the `REPOSITORY__` prefix and are passed to containers through
their Compose files.

## Credits

Created by Egor Chumichev.
