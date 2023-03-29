module A
  def a1
  end
  def a2
  end
end

module B
  def b1
  end
  def b2
  end
end

class C
include A
include B
  def c1
  end
end

test_class = C.new

test_class.a1
test_class.a2
test_class.b1
test_class.b2
test_class.c1