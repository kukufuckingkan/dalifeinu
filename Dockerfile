# Use a base image with Flutter pre-installed
FROM ghcr.io/cirruslabs/flutter:3.24.3

# Set the working directory
WORKDIR /app

# Copy the Flutter project files into the container
COPY . /app

# Ensure Flutter dependencies are up-to-date
RUN flutter pub get
RUN flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs

# Build the Flutter app (for web)
RUN flutter build web

# Expose port 8080 for serving the Flutter web app
EXPOSE 8080
# Start a simple HTTP server to serve the Flutter web app
CMD [ "flutter", "pub", "global", "activate", "webdev", "serve", "--hostname=0.0.0.0", "--port=8080", "build/web" ]