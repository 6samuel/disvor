FROM nixos/nix

# Enable experimental features
ENV NIX_CONFIG="experimental-features = nix-command flakes"

WORKDIR /app

COPY . .

RUN nix build .#backend

EXPOSE 8080

CMD ["./result/bin/backend-exe"]
