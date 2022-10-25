class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.references :question, null: false, forregin_key: true
      t.text :comment, null: false
      t.string :user_name, null: false
      t.boolean :is_lawyer, default: false
      t.integer :helpful_count, default: 0

      t.timestamps
    end
  end
end
