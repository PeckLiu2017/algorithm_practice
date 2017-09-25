class Pet
  attr_accessor :type

  def pet(type)
    self.type = type
  end

  def get_pet_type
    self.type
  end
end
