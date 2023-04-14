class Post < ApplicationRecord
   validates :title, presence: true, length: { maximum: 20 }
   validates :start_at, presence: true
   validates :end_at, presence: true
   validates :memo, length: { maximum: 500 }

   def start_end_check
     errors.add(:end_at, "は開始日より前の日付は登録できません。") if end_at < start_at
   end
end
