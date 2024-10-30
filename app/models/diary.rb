class Diary < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'

  # foreign_keyが書かれているのは、どのカラムでuserモデルと繋がってるか確認するため
end
