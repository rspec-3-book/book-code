RSpec.configure do |c|
  # ...

  c.before(:suite) do
    Sequel.extension :migration
    Sequel::Migrator.run(DB, 'db/migrations')
    DB[:expenses].truncate

    FileUtils.mkdir_p('log')
    require 'logger'
    DB.loggers << Logger.new('log/sequel.log')
  end

  c.around(:example, :db) do |example|
    DB.log_info "Starting example: #{example.metadata[:description]}"
    DB.transaction(rollback: :always) { example.run }
    DB.log_info "Ending example: #{example.metadata[:description]}"
  end
end
