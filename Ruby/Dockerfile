# Use the official Ruby image
FROM ruby:3.2

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the rest of the application code
COPY . .

# Expose a port (adjust as needed)
EXPOSE 4567

# Set the default command (adjust if necessary)
CMD ["ruby", "app.rb"]
