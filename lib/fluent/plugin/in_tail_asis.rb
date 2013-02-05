module Fluent

class AsisTailInput < TailInput
  Plugin.register_input('tail_asis', self)

  def initialize
    super

    @parser = nil
  end

  def configure_parser(conf)
    @parser = AsisParser.new
    @parser.configure(conf)
  end
end

class AsisParser
  include Configurable

  config_param :asis_key, :string, :default => 'message'

  def parse(text)
     record = {}
     record[@asis_key] = text
     return Engine.now, record
  end
end

end
