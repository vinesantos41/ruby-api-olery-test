# Olery Ruby Test Application Exercise

This repository is a very simple API example created to serve as a base for job application tests.

It has originally two endpoints for the users model.

- List users: `/v1/users`
- show one user `/v1/users/1`

## Running

    bundle
    bundle exec sequel -m db/migrations sqlite://db/development.sqlite3
    bundle exec rackup 

Access it through `http://localhost:9292`

## Testing

    bundle exec rspec
