# Google CTF 2023: Under Construction

[Under Construction](https://github.com/google/google-ctf/tree/4a8f8d7808254d40f226ac2ab4604601e0e57d57/2023/quals/web-under-construction), a web challenge from [Google CTF](https://capturetheflag.withgoogle.com/) 2023
(the official archive [google/google-ctf](https://github.com/google/google-ctf), by Google): a Flask site that forwards each signup's raw query string to a PHP site sharing its MySQL database.
This repository runs it with [Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines,
each built by an overlay Dockerfile in [`build/`](build) (upstream's Dockerfile, with the environment of upstream's `challenge.yaml` baked in; the header of each lists what differs).

| Machine | Service |
| --- | --- |
| under-construction | the Flask site on port 1337, published on 1337 |
| under-construction-php | the PHP site on port 1337, published on 1338 |
| under-construction-mysql | MySQL 8.0 on port 3306 (not published) |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:1337/ (Flask) and http://localhost:1338/ (PHP). The Flask machine runs kCTF's `kctf_setup`, so it is privileged. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: the official write-up [`README.md`](https://github.com/google/google-ctf/blob/4a8f8d7808254d40f226ac2ab4604601e0e57d57/2023/quals/web-under-construction/README.md) in the archive.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

Apache-2.0, as the Google CTF archive ([LICENSE](LICENSE)). The third-party software inside the images keeps its own
licence. This challenge is deliberately vulnerable: keep it isolated.
