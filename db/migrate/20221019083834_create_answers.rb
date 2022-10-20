class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.references :questions, null: false, forregin_key: true
      t.text :coomment, null: false
      t.string :user_name, null: false
      t.boolean :is_lawyer, default: false
      t.integer :helpful_count, default: 0

      t.timestamps
    end
  end
end
