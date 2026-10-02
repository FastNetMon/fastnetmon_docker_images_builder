# FastNetMon Advanced — Official Docker Images

This repository contains the `Dockerfile` and CI pipeline used to build the **official Docker images for [FastNetMon Advanced](https://fastnetmon.com/)** — a high-performance DDoS detection and mitigation platform.

## Official images

Pre-built images are published to Docker Hub:

> **[`fastnetmon/fastnetmon-advanced`](https://hub.docker.com/r/fastnetmon/fastnetmon-advanced)**

Images are built nightly against the latest stable release of FastNetMon Advanced for the following base distributions:

| Ubuntu          | Tags                                           |
|-----------------|------------------------------------------------|
| 24.04 (Noble)   | `latest`, `<version>`, `<version>-ubuntu24.04` |
| 22.04 (Jammy)   | `<version>-ubuntu22.04`                        |
| 26.04 (Resolute)| `<version>-ubuntu26.04`                        |

### Quick start

```bash
docker pull fastnetmon/fastnetmon-advanced:latest
```

## Legacy image name

**[`fastnetmonltd/fastnetmon-advanced`](https://hub.docker.com/r/fastnetmonltd/fastnetmon-advanced)** is an older image name that is still supported for backward compatibility. New deployments should use the current image name.

## Development images

Development builds are published separately to [ghcr.io/fastnetmon/fastnetmon-advanced-dev](https://github.com/FastNetMon/fastnetmon_docker_images_builder/pkgs/container/fastnetmon-advanced-dev)

If you need to use the development image with an existing configuration that expects the standard FastNetMon Advanced image name, you can retag it locally:

```bash
docker pull ghcr.io/fastnetmon/fastnetmon-advanced-dev:dev-latest
docker tag \
  ghcr.io/fastnetmon/fastnetmon-advanced-dev:dev-latest \
  fastnetmon/fastnetmon-advanced:dev-latest
```

Development images are intended for testing recent changes and may be less stable than regular release builds.

## Documentation

For installation, configuration and operational guidance please refer to the official documentation:

- **[FastNetMon Advanced Docker installation](https://fastnetmon.com/docs-fnm-advanced/fastnetmon-advanced-docker-installation/)** — recommended starting point for running FastNetMon Advanced in Docker.
- **[Manual deployment on the Docker platform](https://fastnetmon.com/docs-fnm-advanced/fastnetmon-advanced-manual-deployment-on-docker-platform/)** — step-by-step manual deployment guide.

## Useful links

- Website: <https://fastnetmon.com/>
- Documentation: <https://fastnetmon.com/docs-fnm-advanced/>
- Docker Hub: <https://hub.docker.com/r/fastnetmon/fastnetmon-advanced>
- Support: <https://fastnetmon.com/contact/>

