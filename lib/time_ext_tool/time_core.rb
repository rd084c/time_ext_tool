module TimeCore

  def to_short(is_text = false, need_year = true)
    arr = ["%Y年", "%m月%d日"]
    arr.delete_at(0) unless need_year
    is_text ? self.strftime(arr.join) : need_year ? self.strftime("%F") : self.strftime("%m-%d") 
  end

  def to_long(is_text = false, need_year = true)
    arr = ["%Y年", "%m月%d日 %R"]
    arr.delete_at(0) unless need_year
    is_text ? self.strftime(arr.join) : need_year ? self.strftime("%F %R") : self.strftime("%m-%d %R")
  end

  def to_full(is_text = false, need_year = true)
    arr = ["%Y年", "%m月%d日 %T"]
    arr.delete_at(0) unless need_year
    is_text ? self.strftime(arr.join) : need_year ? self.strftime("%F %T") :self.strftime("%m-%d %T")
  end
end

class Date
  include TimeCore
end

class DateTime
  include TimeCore
end

class Time
  include TimeCore
end

