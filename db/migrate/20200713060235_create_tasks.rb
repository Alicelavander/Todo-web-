class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string   :content
      t.text     :category
    end
    #外部キー制約をつけることができない(調べた方法でやってもつかない)
  end
end
