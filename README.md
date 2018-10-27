# README

TODO 

Integrate OAuth2 for domain wide delegaton
https://developers.google.com/gmail/imap/xoauth2-protocol

working on dropdown

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