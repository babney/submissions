class Submission < ApplicationRecord
  belongs_to :work
  belongs_to :publication
  class InvalidTransition < StandardError;end

  STATES = %w[pending sent rejected accepted]

  # is AASM overkill? for now I'll just handle it

  STATES.each do |new_state|
    define_method "#{new_state}!" do
      unless allowed_transition?(state, new_state)
        raise InvalidTransition.new("Can't transition from #{state} to #{new_state}!")
      end

      update_attribute :state, new_state
    end
  end

  STATES.each do |state_name|
    define_method "#{state_name}?" do
      state == state_name
    end
  end

  private

  def allowed_transition?(from, to)
    case from
    when 'pending'
      to == 'sent'
    when 'sent'
      %w[rejected accepted].include? to
    when 'rejected'
      false
    when 'accepted'
      false
    else
      false
    end
  end
end
