## SCRIPTING

**shift**
```sh
arg1=$1; shift
arg2=$1
```

**statements**
```sh
[[ -z "$1" ]] && echo 'Missing parameter' && exit 1

if [ ! -d "source" ]; then
  echo 'Directory not found'
  exit 1
fi
```

**cases**
```sh
case "$1" in
    # i rest my case
    version) echo "1.0.0" ;;
    *) echo "Command not found!" && exit 1 ;;
esac
```

**read**
```sh
read -p "Question? " answer

ask () {
    read -p "$1 ($2)? " answer
    [[ -z "$answer" ]] && answer=$2
    echo $answer
}
ask "What is your name" "Ron"
```

## SEARCH

**grep - search**
```sh
# grep -e search_pattern inputfile
echo abc123 | grep -Po "([0-9]{2})"
# result: 12
```

**sed - search / replace**
```sh
# sed s/search_pattern/replace_pattern/ inputfile
echo 121 | sed s/1/8/g
# result: 828
```

**awk - search / execute**
```sh
# awk search_pattern {actions} inputfile
echo 121 | awk '{print $1*4}'
# result: 484
```

## SNIPPETS

See https://github.com/ronvanderheijden/bash/tree/master/snippets
