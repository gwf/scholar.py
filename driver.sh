#!/bin/sh

results="results.csv"
query="Emotiv EEG"
sleep=60
total=8500
count=10
start=470

#rm -f "$results"
while ((start < total)); do
  cmd="./scholar.py --csv --cookie-file=cookies --no-patents --no-citations -d -d -d"
  cmd="$cmd --all '$query' --start $start"
  $cmd >> "$results"
  ((start = start + count))
  sleep $sleep
done

exit 0


