class Workshop < ActiveRecord::Base

  has_many  :mini_lessons , dependent: :destroy
  NAV_SETTING = {linear: "linear", queries_only: "query", none: "none"}
  attr_accessible :description, :name, :nav_setting

end

