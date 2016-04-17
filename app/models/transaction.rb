class Transaction < ApplicationRecord
  belongs_to :category
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, { :col_sep => "\t", headers:false }) do |row|
      Transaction.find_or_create_by!(account: row[0], transaction_date: DateTime.parse(row[2]), amount: row[6].to_s.gsub!(',', '.'), description: row[7])
    end
  end

  def suggestedcategory
    @rules = Rule.all.includes(:category)
    returnvalue = ''
    @rules.each do |rule|
      returnvalue = rule.category.name if self.description.to_s =~ Regexp.new(rule['regexp'])
    end
    returnvalue
  end
end
