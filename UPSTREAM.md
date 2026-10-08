# Upstream

| | |
| --- | --- |
| Project | Google CTF (official archive of challenges) |
| Repository | https://github.com/google/google-ctf |
| Challenge | `2023/quals/web-under-construction` and `2023/quals/web-under-construction-php` (Google CTF 2023) |
| Version | master (the archive has no releases) |
| Commit | 4a8f8d7808254d40f226ac2ab4604601e0e57d57 |
| Licence | Apache-2.0 |

| Here | google-ctf path |
| --- | --- |
| `build/under-construction/app/` | [`2023/quals/web-under-construction`](https://github.com/google/google-ctf/tree/4a8f8d7808254d40f226ac2ab4604601e0e57d57/2023/quals/web-under-construction) |
| `build/under-construction-php/app/` | [`2023/quals/web-under-construction-php`](https://github.com/google/google-ctf/tree/4a8f8d7808254d40f226ac2ab4604601e0e57d57/2023/quals/web-under-construction-php) |

The vendored folders are that commit's challenge folders, unchanged, without their Git history. The flag
is upstream's own: the `FLAG` value of the Kubernetes secret in `web-under-construction-php/challenge.yaml`.

Upstream deploys three workloads with kCTF on Kubernetes (`challenge.yaml`): the Flask challenge, the PHP challenge
and a stock `mysql:8` Deployment, configured with environment variables and a secret. Here each is a machine
named as upstream's Kubernetes service (the Flask code calls `under-construction-php` by name), built by
`build/<machine>/Dockerfile`: upstream's Dockerfile with the COPY sources under `app/challenge/` and the same
environment values baked in with `ENV`; MySQL is pinned to 8.0.33.

To update, replace the vendored folders with a newer google-ctf commit, then change this file.
