# Developing locally

jekyll serve

# Building for Docker locally

docker build . -t wemble

docker run -p 5000:5000 --name wemble --restart always wemble
