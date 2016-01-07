module Mize::Reload
  # Reload this object if a #reload method was provided up somewhere in the
  # inheritance tree, afterwards clear the memoization cache and return self.
  def reload(*)
    result = self
    if defined? super
      result = super
    end
    mize_cache_clear
    result
  end
end
