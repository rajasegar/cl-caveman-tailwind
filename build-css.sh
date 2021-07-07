#!/bin/sh

if [ "$1" = "--prod" ]
then
   echo "Building Tailwind CSS for production env..."
   NODE_ENV=production npx tailwindcss -i ./src/tailwind.css  -o ./static/css/main.css --minify
else
   echo "Building Tailwind CSS..."
   npx tailwindcss -i ./src/tailwind.css  -o ./static/css/main.css 
fi
       
