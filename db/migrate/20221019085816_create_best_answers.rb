class CreateBestAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :best_answers do |t|
      t.references :answers, foreign_key: true, null: false
      t.references :questions, foreign_key: true, null: false

      t.timestamps
    end

    add_index :best_answers, %i[answer_id question_id], unique: true
  end
end
