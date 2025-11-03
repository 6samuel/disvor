FROM nixos/nix

ENV NIX_CONFIG="experimental-features = nix-command flakes"

WORKDIR /app

COPY . .

RUN nix-build

EXPOSE 8080

CMD ["./result/bin/backend-exe"]
