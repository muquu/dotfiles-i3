# bash

if [[ -z $GOROOT ]]; then
  for GOROOT in /usr/local/opt/go/libexec "${XDG_DATA_HOME:-~/.local/share}/go"; do
    if [[ -d $GOROOT && ":$PATH:" != *":$GOROOT/bin:"* ]]; then
      export GOROOT PATH=$PATH:$GOROOT/bin
      break
    fi
  done
fi

if [[ -z $GOPATH ]] && type -p go >/dev/null; then
  export GOPATH="${XDG_DATA_HOME:-~/.local/share}/gopath"
fi

if [[ -n $GOPATH && ":$PATH:" != *":$GOPATH/bin:"* ]]; then
  export PATH="$PATH:$GOPATH/bin"
fi