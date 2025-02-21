#! #bash #bin #his #env

FSI=$'\n'; Unset -f
for f in $(find . -name '*.json'); do
  cat "$f" | jq --sort-keys '.' | sponge "$f"
done
set IFS; set +f
