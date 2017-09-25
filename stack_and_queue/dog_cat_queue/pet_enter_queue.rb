require_relative 'pet'
class PetEnterQueue
  def pet_enter_queue(pet, count)
    self.pet = pet
    self.count = count
  end

  def get_pet
    self.pet
  end

  def get_count
    self.count
  end

  def get_enter_pet_type
    self.pet.get_pet_type
  end
end
