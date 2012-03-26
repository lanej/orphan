module Orphan::Resource
  class Serial; end
  class String; end
  class Integer; end

  def self.included(klass)
    klass.send(:extend, Orphan::Resource::ClassMethods)
  end



end

module Orphan::Resource::ClassMethods
  def property(name, type, opts={})
    # TODO: implement
  end
  def create(attributes={})
    # TODO: implement
  end
  def auto_migrate!
    # TODO: implement
  end
  def get(id)
    # TODO: implement
  end
end
