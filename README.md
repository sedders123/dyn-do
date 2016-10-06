# Dyn-DO

A simple Ruby script to allow Dynamic DNS with Digital Oceans DNS services. This script will get your public IP address and then update an existing domain record to point to it.

### Requirements

 - [Ruby](https://www.ruby-lang.org/en/documentation/installation/) > 2.0.0

- [Bundler](https://bundler.io/) > 1.3

### Installing

Clone this repository

```
$ git clone https://github.com/sedders123/dyn-do
```

Install gems
```
$ bundler install
```

Generate a Digial Ocean access token [here](https://cloud.digitalocean.com/settings/api/tokens)

Set up an environment variable to store your Digital Ocean access token

```
$ export DO_ACCESS_TOKEN=<your_token_here>
```

Edit the `dyn-do.rb` file to use your domain and desired subdomain.

```
DOMAIN = 'your-domain.com'
SUB_DOMAIN = 'your-subdomain'
```

### Usage

```
$ ruby dyn-do.rb
```

## TODO

- [ ] Allow the domain and subdomain to be specified at runtime
- [ ] Create domain record if it does not already exist
- [ ] Handle multiple sub domains with the same name
- [ ] IPv6 support (AAAA records)

## Authors

* **James Seden Smith** - [sedders123](https://github.com/sedders123)

## License

This project is licensed under the MIT License - see [LICENSE.md](LICENSE.md) file for details
