class Output
  def initialize
    @messages = []
  end
  
  def messages
    @messages ||= []
  end

  def puts(message)
    @messages << message
  end
end

def op
  @output ||= Output.new
end

