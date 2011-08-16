class Signature < ActiveRecord::Base
  def anonymize(str)
    if self.anonymous then
      return str.chars.to_a[0]+"."
    else
      return str
    end
  end
end
