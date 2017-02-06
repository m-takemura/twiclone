class Tweet < ActiveRecord::Base
    validates :content, presence: true
    # 改行コード[\r\n]を空に置き換えてからカウントする
    validates :content, length: { maximum: 255, tokenizer: ->(str) { str.gsub(/[\r\n]/, '').split(//) } }
end
