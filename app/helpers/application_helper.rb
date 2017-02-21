module ApplicationHelper

  def to_boolean(value)
    if value.to_s == 'true'
      true
    elsif value.to_s == 'false'
      false
    end
  end
end
