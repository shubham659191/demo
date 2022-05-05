class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :job_type
      t.integer :user_id
      t.string :job_stutes

      t.timestamps
    end
  end
end
