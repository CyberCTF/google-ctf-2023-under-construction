#!/bin/sh
# Places the player's flag (CTF_FLAG_MAIN, given by the launcher) in /ctf/flag (PHP sets it as FLAG for every request);
# without one (CI, a run by hand) the development flag.
dev='CTF{dev-google-ctf-2023-under-construction}'
printf '%s\n' "${CTF_FLAG_MAIN:-$dev}" > /ctf/flag
chmod 444 /ctf/flag
