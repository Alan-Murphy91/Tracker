module DailyLogsHelper
  CUTTING = '#A8D4D0'
  MAINTENANCE = '#FF9900'
  BULKING = '#FF0000'

  def calorie_tier(calories)
    case calories
    when 0..2400
      'cutting'
    when 2401..2799
      'maintenance'
    else
      'bulking'
    end
  end

  def format_calorie_tier(calories)
    tier = calorie_tier(calories)
    case tier
    when 'cutting'
      CUTTING
    when 'maintenance'
      MAINTENANCE
    when 'bulking'
      BULKING
    end
  end
end
