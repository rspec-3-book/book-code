RSpec.configure do |c|
  c.before(:suite) do
    Sequel.extension :migration
    Sequel::Migrator.run(DB, 'db/migrations')
    DB[:expenses].truncate
  end

  c.around(:example, :db) do |example|
    DB.transaction(rollback: :always) { example.run }
  end
end
