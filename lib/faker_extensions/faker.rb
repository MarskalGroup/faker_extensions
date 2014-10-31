#Added by Mike Urban to enhance data population abilities provided by the faker module 10/2014
module Faker

  def self.coin_flip
    [true,false].shuffle.first   #rand select for boolean, essentially a coin flip
  end

  def self.random_paragraphs(p_max_paragraphs, p_paragraph_separator, p_allow_nil)
    l_text = ''
    l_start = p_allow_nil ? 0 : 1
    l_num_paragraphs = (l_start..p_max_paragraphs).to_a.shuffle.first
    l_num_paragraphs.times do |ctr|
      l_text += "#{p_paragraph_separator}" if ctr > 0
      l_text += Faker::Lorem.paragraph
    end
    l_text.blank? ? nil : l_text
  end

  def self.mostly_true(p_pct=75)
    #no more than 99%, no less than 51% can be mostly true
    p_num_true = [[p_pct.to_i, 99].min, 51].max
    (1..100).to_a.shuffle.first <= p_num_true
  end

  def self.mostly_false(p_pct=75)
    !mostly_true(p_pct)
  end

  def self.gender(p_male = 'male', p_female = 'female')
    l_gender = coin_flip ? p_male : p_female #genders need to be passed if different than english or you want boy/girl for example
  end

  def self.integer_range(p_from, p_to)
    (p_from..p_to).to_a.shuffle.first
  end

  def self.date_range(p_from, p_to)
    (p_from..p_to).to_a.shuffle.first
  end

end