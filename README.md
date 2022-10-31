# Gabriel :magic_wand:

This is my personal Linux util script to boost speed while working on 
Linux VPS


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


**Print your Local IP**

```bash
$ get_local_ip
```
Output: `192.168.1.117`


**Print your Public IP**

```bash
$ get_public_ip
```
Output: `157.240.253.63`