class World
  attr_reader :current_state, :future_state

  def initialize(state)
    @current_state = state
    @future_state = []
  end

end
