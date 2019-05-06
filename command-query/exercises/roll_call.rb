class RollCall
  def initialize(names = [])
    @names = names
  end

  def longest_name
    @names.max_by do |name|
      name.length
    end
    end
  end
