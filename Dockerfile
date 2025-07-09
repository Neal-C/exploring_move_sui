# I take no responsibility for bloated Docker images. Proceed at your own risk :)
FROM mysten/sui-tools:sui-v1.51.0-release

COPY . .

CMD sui move test