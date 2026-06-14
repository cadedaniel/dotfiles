I keep forgetting how ssh-agent works on MacOS so writing it down.

Client (MacOS) runs background process called `ssh-agent`.
* You can check what identities it has via `ssh-add -l`.
* You can add new identities via `ssh-add <path-to-identity>`.
* If needed, you can start the agent yourself via `eval $(ssh-agent)`.
* However, starting it yourself may? cause two instances to run, for example ssh can start it on its own.
* When ssh'ing to a node, `ForwardAgent yes` causes the Unix socket to be forwarded to the dest machine and specified in env vars.
* What this means is that the remote machine can access your ssh keys that are loaded in the agent.
* On SSH login, `~/.ssh/rc` updates `~/.ssh/ssh_auth_sock` to point at the current forwarded agent. Shell startup files set `SSH_AUTH_SOCK` to that stable path so old tmux panes can use the current agent.
* This is implemented by `ssh/rc`, `ssh/agent-env.sh`, and `install-ssh.sh`.
