class NewImages < ActiveRecord::Migration[6.1]
    def change
      create_table :images do |t|
        t.integer :chapter_id, index: true
        t.string :filename

        t.timestamps null: false
      end      
#      add_attachment :images, :image
    end
end
