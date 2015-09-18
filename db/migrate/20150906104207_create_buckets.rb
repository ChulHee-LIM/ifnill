class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|

    	 t.integer :user_id
    	 t.string :name
    	 t.string :intro_simple
    	 t.text :intro_detail
    	 t.date :start_date
    	 t.date :finish_date
    	 t.text :thumbnail
    	 t.text :images
      t.string :contents_url
      t.integer :state

      t.timestamps null: false
    end
  end
end
