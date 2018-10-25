# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Imap-Backup Library

* - Files

        - lib/imap/configuration/store.rb
            This file handles storing the config file

        - lib/imap/backup/account/connection.b
            This file hadles the individual conection - important one

        - list.rb
            

        - lib/imap-backup


To run a backup from confg.json

options = {command: "backup"}
begin
  configuration = Imap::Backup::Configuration::List.new(options[:accounts])
rescue Imap::Backup::ConfigurationNotFound
  Imap::Backup::Configuration::Setup.new.run
  exit
end
configuration.setup_logging
  configuration.each_connection do |connection|
    connection.run_backup
  end









Testing 

# Testing Again

Some Great projects:

- Material-sass   https://github.com/mkhairi/material-sass

Last time this should be daniel

Guy