class Post < ApplicationRecord
    validates :title, {presence:true,length:{maximum:20}}
    validates :start, {presence:true}
    validates :end, {presence:true}
    validate :date_check
    validates :memo, {length:{maximum:500}}

    def date_check
        if self.start != nil && self.end != nil
            if self.start > self.end
            errors.add(:end,"は開始日より前の日付は登録できません")
            end
        end
    end
end

