require 'active_support'

require_relative 'activerecord-disable-inverse-of-heuristics/version'

if defined? Rails
  class ActiveRecordDisableInverseOfHeuristics::Railtie < Rails::Railtie

    initializer 'activerecord-disable-inverse-of-heuristics' do
      ActiveSupport.on_load :active_record do
        require 'activerecord-disable-inverse-of-heuristics/clear'
      end
    end
  end
else
  ActiveSupport.on_load :active_record do
    require 'activerecord-disable-inverse-of-heuristics/clear'
  end
end
