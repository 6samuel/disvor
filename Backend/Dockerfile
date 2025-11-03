FROM nixos/nix

# Optional: Enable experimental features if needed later
ENV NIX_CONFIG="experimental-features = nix-command flakes"

WORKDIR /app

COPY . .

# Use traditional nix-build since default.nix is present
RUN nix-build

EXPOSE 8080

# Replace 'backend-exe' with the actual binary name inside result/bin/
CMD ["./result/bin/backend-exe"]
