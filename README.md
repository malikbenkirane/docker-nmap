# nmap container image

A container image for Nmap (20.5 MB).

## Docker image usage

```
# alias docker=podman if you're using podman instead of docker (:
git clone <repo>
cd docker-nmap
docker build -t <owner>/nmap .
docker run <owner>/nmap [Nmap options]
```

## Examples

Run scan on scanme.nmap.org using nmap -A flag:

```
docker run <owner>/nmap -A scanme.nmap.org
```

Run scan on scanme.nmap.org using nmap -sT -T4 flag:

```
docker run <owner>/nmap -sT -T4 scanme.nmap.org
```

Automatically delete container after scanning:

```
docker run --rm=true <owner>/nmap -A scanme.nmap.org
```

Use host data dir (/path/to/output/dir/on/host) for output of nmap scan:

```
docker run -v /path/to/output/dir/on/host:/work:rw <owner>/nmap -oA scan -A scanme.nmap.org
```

