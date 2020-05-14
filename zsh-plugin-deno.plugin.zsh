function readlink() {
  DIR="${1%/*}"
  (cd "$DIR" && echo "$(pwd -P)")
}

deno completions zsh > ${$(readlink -f $0):h}/_${$(readlink -f $0):h:t}
