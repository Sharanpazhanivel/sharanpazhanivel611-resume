FROM hugomods/hugo:exts

COPY . /src

# Build site.
WORKDIR /src/sharanresume
RUN hugo --minify

# Move public directory to /src/public for App Platform
RUN mv /src/sharanresume/public /src/public

