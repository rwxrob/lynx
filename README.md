# Lynx Text Web Browser with CLI Search, Vim Bindings, GruvBox

```
alias lynx='docker run -it --rm lynx '
lynx rwxrob.live
```

This is Lynx with my preferred settings including:

* Vim bindings
* GruvBox color theme
* Transparent background
* Accept Cookies
* SSL Certificates Included
* Minimal interface
* Lies about User-Agent

I prefer this setup because I can do all my browsing and research with
just my right hand (so my left can hold a cup of coffee).

## Installation 

Using the Docker image above is the preferred way to get going quickly.
But if you wish to add `lynx` to your own system consider the following.

On Debian and Ubuntu `sudo apt update && sudo apt -y install lynx` works.

If for some reason you don't have the ability to change files in
`/etc/lynx` then consider putting them in `~/.config/lynx` instead and
using the [`lynx`](bin/lynx) script, which wraps `/usr/bin/lynx` and will
need to be added anywhere in your `$PATH`.

## Search Tools

I've included the scripts that enable the `?` and `??` and `???` CLI
search aliases. Just add [`duck`](bin/duck), [`google`](bin/google), and
[`bing`](bin/bing) to your `$PATH` and the following somewhere in your RC
file to enable the aliases:

```
alias '?'=duck
alias '??'=google
alias '???'=bing
```
