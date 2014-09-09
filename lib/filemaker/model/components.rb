require 'filemaker/model/fields'
require 'filemaker/model/findable'
require 'filemaker/model/relations'

module Filemaker
  module Model
    module Components
      extend ActiveSupport::Concern

      included do
        extend Findable
      end

      include ActiveModel::Model
      include ActiveModel::Serializers::JSON
      include ActiveModel::Serializers::Xml
      include Fields
      include Relations
      # include Persistable
      # include Serializable
    end
  end
end
