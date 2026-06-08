# FastNetMon Advanced — Official Docker Images

This repository contains the `Dockerfile` and CI pipeline used to build the **official Docker images for [FastNetMon Advanced](https://fastnetmon.com/)** — a high-performance DDoS detection and mitigation platform.

## Official images

Pre-built images are published to Docker Hub:

> **[`fastnetmonltd/fastnetmon-advanced`](https://hub.docker.com/r/fastnetmonltd/fastnetmon-advanced)**

Images are built nightly against the latest stable release of FastNetMon Advanced for the following base distributions:

| Ubuntu | Tags |
|--------|------|
| 24.04 (Noble) | `latest`, `<version>`, `<version>-ubuntu24.04` |
| 22.04 (Jammy) | `<version>-ubuntu22.04` |

### Quick start

```bash
docker pull fastnetmonltd/fastnetmon-advanced:latest
```

## Documentation

For installation, configuration and operational guidance please refer to the official documentation:

- **[FastNetMon Advanced Docker installation](https://fastnetmon.com/docs-fnm-advanced/fastnetmon-advanced-docker-installation/)** — recommended starting point for running FastNetMon Advanced in Docker.
- **[Manual deployment on the Docker platform](https://fastnetmon.com/docs-fnm-advanced/fastnetmon-advanced-manual-deployment-on-docker-platform/)** — step-by-step manual deployment guide.

## Useful links

- Website: <https://fastnetmon.com/>
- Documentation: <https://fastnetmon.com/docs-fnm-advanced/>
- Docker Hub: <https://hub.docker.com/r/fastnetmonltd/fastnetmon-advanced>
- Support: <https://fastnetmon.com/contact/>

