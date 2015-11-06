# Montreal.rb website

[![Build Status](https://travis-ci.org/montrealrb/Montreal.rb.svg)](https://travis-ci.org/montrealrb/Montreal.rb)

## Description

This is the Montreal.rb organization's website. It is still in development stage so you are welcome to contribute.

## Contribute

You will find in the Github issues what needs to be done. To contribute, fork the repository to your own account and clone your
fork to your dev machine.

```bash
$ git clone git@github.com:your_username/Montreal.rb.git
```

You will find the development setup below. To work on a new feature or to fix a bug, create a new branch to commit your work.

When you are ready, push your commits to your Github fork and open a pull request.

## Dependencies

- ruby 2.2.3
- Postgresql 9.3+

## Development Setup

Fork the repository and clone it to your machine. Then change directory to `Montreal.rb`

```bash
$ git clone <your_fork> && cd Montreal.rb
```

### Ruby

You should have Ruby version `2.2.3` installed using your prefered Ruby version management tool (or by globally updating your system Ruby)

__Most Popular Ruby Version Managers__

- [rbenv](http://rbenv.org/)
- [rvm](https://rvm.io/)

### Database

Do you have Postgres installed?

```bash
$ postgres --version
Postgresql 9.3
```

For the next parts, you need Postgresql installed, configured and running and a
`.pgpass` file in your home directory. The content of that file should look like:

```
# hostname:port:database:username:password
localhost:5432:*:sdeziel:myverysecurepassword
```

#### Install Postgres

```bash
$ brew install postgresql
```

### Rails

> You should check out Ruby on Rails' guides if you are not familiar with the framework : http://guides.rubyonrails.org/

#### Setup your Project

```bash
$ bin/setup
```

__IMPORTANT: `pg` gem installation error__

If you experience an error during the execution of that script related to the installation of the `pg` gem,
you might want to try the following procedure:

```bash
$ sudo find / -name "pg_config"
# Use the most appropriate path found by the command above
$ gem install pg -- --with-pg-config=<your_pg_config_path>
$ bin/setup
```

Once successfully completed, this setup script will:

- install `bundler` for managing your gem dependencies
- install your project's required gems
- create and setup your database
- cleanup logs and temporary files

#### Start your Web Server

You should be ready to start your webserver using:

```bash
$ bin/rails server
```

By default, your application is accessible at [http://localhost:3000](http://localhost:3000) in your browser.

## Testing

RSpec is used to test the application. You can run all the tests using

```bash
$ rspec
```

or you can run a specific test file (example 1), or a single test (example 2, 17 is the line number of your test)

```bash
$ rspec spec/path/to/your/file.rb    # example 1

$ rspec spec/path/to/your/file.rb:17 # example 2
```

You can also use guard to test automatically when you save a file

```bash
$ bundle exec guard
```

## Deploy

The application does not have any deploy environment since it it still in development.

## Bug Tracker

If you find any bug, please open an issue in the project's Github repository (https://github.com/montrealrb/Montreal.rb/issues)

## License

MIT
