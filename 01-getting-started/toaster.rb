# validate me

Toaster = Struct.new(:serial) do
  def self.find_by_serial(serial)
    new(serial)
  end
end

def current_toaster
  @current_toaster ||= Toaster.find_by_serial('HHGG42')
end

current_toaster # to ensure it does not raise errors

@current_toaster = nil || Toaster.find_by_serial('HHGG42')
