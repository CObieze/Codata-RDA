#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Usage: simple.sh sleep-time integer"
    exit 1
fi

echo "Thinking really hard for $1 seconds.."
sleep $1
answer=$(( $2 * 2 ))
echo "We calculated $answer."
exit 0
