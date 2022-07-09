#/bin/bash

echo "Tossing a coin..."

CNT_TAIL=0
CNT_HEAD=0

for i in {1..3}; do
  if [ "$(shuf -i 0-1 -n 1)" == 0 ]; then
    COIN="Tails"
    CNT_TAIL=$((CNT_TAIL + 1))
  else 
    COIN="Heads"
    CNT_HEAD=$((CNT_HEAD + 1))
  fi
  echo "Round $i: $COIN"
done

echo "Heads: $CNT_HEAD, Tails: $CNT_TAIL"

if [ $CNT_HEAD -gt $CNT_TAIL ]; then
  echo "You won!"
else 
  echo "You lost!"
fi
