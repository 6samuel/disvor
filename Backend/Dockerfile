# Use official Nix image
FROM nixos/nix

# Set working directory
WORKDIR /app

# Copy the entire backend project
COPY . .

# Install dependencies and build
RUN nix build .#backend

# Expose the backend port
EXPOSE 8080

# Run the backend binary
CMD ["./result/bin/backend-exe"]
