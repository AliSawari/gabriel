# Gabriel :magic_wand:

This is my personal Linux util script to boost speed while working on 
Linux VPS.
The Idea behind this minimalistic script is to perform easy and mundane DevOps Tasks with just one function and less keystrokes


## Requirements
- curl
- python3
- net-tools


## Setup

you can use this script as a one time session with the `source` command

```bash
$ source ./gabriel.sh
```
Or you can add this to your shell profile

**Bash**

```bash
echo "source /path/to/file/gabriel.sh" >> ~/.bashrc
```

**Zsh**


```bash
echo "source /path/to/file/gabriel.sh" >> ~/.zshrc
```

NOTE: you must add the script to your root shell profile as well, as some of the functions require root privilege


## Functionality


### Print your Local IP

```bash
$ get_local_ip
```
Output: `192.168.1.117`


<hr/>

### Print your Public IP

```bash
$ get_public_ip
```
Output: `157.240.253.63`


<hr/>

### What program is listening on this port

NOTE: Needs root access, requires 1 argument, the port number

```bash
$ is_port_running 8000
```

Output: `tcp        0      0 0.0.0.0:8000            0.0.0.0:*               LISTEN      8485/python3`

<hr/>

### Get Random String

Suitable for Situations with Passwords or API Keys or any Uniuqe IDs(not entirely unique)

Needs 1 argument, the length of the string. maximum 64

```bash
$ get_random_str 16
```
Output: `15090fd27af598c5`


### Docker container helpers

- **docker_stop_all** Stops all containers
- **docker_kill_all** Kills all containers
- **docker_rm_all** Removes all containers


## License

Copyright 2022 Ali Sawari

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
