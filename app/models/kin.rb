class Kin < Profile
  # self.table_name = "kins"
  belongs_to :user
  counter_culture :user, column_name: "kins_count"
end
