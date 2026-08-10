# Chumichev's Infrastructure Guide for LLMs

## Service boundaries

- Each directory under `./services/` is an independent service.
- Services may interact with one another, but each service must remain
  independently deployable.

## Naming

- Name each service after its function or role in the overall system.
- Within a service, image and container names must match and describe their
  abstract function in that service's context.

## Environment variables

- Pass all container environment variables through the relevant Compose file.
- Treat externally supplied variables as part of the repository's configuration
  contract and prefix their names with `REPOSITORY__`.
