module ActiveRecordDisableInverseOfHeuristics
  module NoAutomaticInverseOf
    private
    def automatic_inverse_of; end
  end
end

ActiveRecord::Reflection::AssociationReflection.prepend ActiveRecordDisableInverseOfHeuristics::NoAutomaticInverseOf
