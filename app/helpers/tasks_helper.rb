module TasksHelper
  def flash_color(key)
    case key
    when 'notice' then 'bg-green-700'
    when 'alert' then 'bg-yellow-700'
    when 'error' then 'bg-red-700'
    else 
      'bg-purple-700'
    end
  end
end
