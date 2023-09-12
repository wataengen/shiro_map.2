class LimitImageValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value.empty? || value.count > 4
      record.errors[:attribute] << (options[:message] || "画像の投稿は4枚まで可能です。")
    end
  end
end