Sequel.migration do
  change do
    create_table(:contracts) do
      primary_key :id
      String :name, :null => false
      Date :start_date
      Date :end_date
    end
  end
end
