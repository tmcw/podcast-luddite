# Podcast luddite

A specialized tool to solve a rare problem: running with a traditional MP3 player, listening to Podcasts.
This isn't nearly as simple as you might hope.

### Requirements

All of these are from Homebrew

- fzf
- xmlstarlet
- aria2c
- parallel

Run `touch ~/.parallel/will-cite` to turn off the parallel nagware.

### Using it

1. Download your OPML file from your Podcast app
2. Run podcast-luddite

```
$ podcast-luddite.sh overcast.opml
```

This will download the RSS feeds, let you pick podcasts, then let you pick episodes to download,
and then download them.

This uses fzf's `-m` flag to allow multiple selections: so press Tab to select multiple items,
and use arrow keys or j/k to navigate the list.
