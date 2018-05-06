class Class
  def subclasses
    subclasses = []
    ObjectSpace.each_object(singleton_class) do |k|
    	subclasses << k if k.superclass == self
    end
    subclasses
  end
end

c = Object.subclasses.sample
methods_list = c.instance_methods(false).sample(3)

puts "クラス: #{c}"
methods_list.each { |m| puts "メソッド: #{m}" }
