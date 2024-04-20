# == Schema Information
#
# Table name: games
#
#  id                :bigint           not null, primary key
#  enabled           :boolean          default(FALSE)
#  logo_url          :string
#  name              :string
#  preview_image_url :string
#  rating_type       :enum             default("rank"), not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Game < ApplicationRecord
end
