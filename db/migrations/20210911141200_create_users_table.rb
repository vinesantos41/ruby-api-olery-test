Sequel.migration do
  change do
    create_table(:users) do
      primary_key :id
      String :name, :null => false
      String :email
      foreign_key :contract_id, :contracts
    end
  end
end
