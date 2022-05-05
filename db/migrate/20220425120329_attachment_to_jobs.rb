class AttachmentToJobs < ActiveRecord::Migration[6.1]
  def change
  	add_column :jobs, :attachment, :string
  end
end
