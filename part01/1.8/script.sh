#!/bin/sh

echo "Input website:"
read website
echo "Searching.."
sleep 1
curl http://$website;
