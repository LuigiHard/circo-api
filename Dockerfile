# Use the official Strapi image as the base image
FROM strapi/strapi

# Copy the project files to the /srv/app directory in the container
COPY . /srv/app

# Set the working directory
WORKDIR /srv/app

# Install dependencies
RUN npm install

# Expose the port Strapi will run on
EXPOSE 1337

# Start the Strapi server
CMD ["strapi", "start"]
