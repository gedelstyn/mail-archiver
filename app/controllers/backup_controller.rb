class BackupController < ApplicationController
    def start_backup
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
    end
end
