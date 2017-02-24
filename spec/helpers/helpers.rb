require 'rails_helper'

module Helpers
  def visit_safe_path
    visit root_path(safe: true)
  end

  def visit_unsafe_path
    visit root_path(safe: false)
  end
end