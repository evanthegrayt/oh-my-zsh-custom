### vb [command]
This one is probably even less useful to anyone other than me, but I'll mention
it...

I have a couple of vagrant boxes, and instead of creating multiple aliases for
dealing with them, this function will change which box it's dealing with by
calling `vb switch`. From there, you can run `vb up` to bring up that box,
`vb ssh` to ssh to the machine, and a few other things.

This plugin also supports `zsh` tab-completion.

