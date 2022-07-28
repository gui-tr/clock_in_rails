module ShiftsHelper

  def shift_duration_in_min(time_in, time_out)
    ((time_out - time_in)/60)
  end

  def shift_duration_formatted(minutes)
    min = minutes % 60
    hrs = (minutes - min) / 60
    hrs = format('%2d', hrs)
    min = format('%02d', min)
    "#{hrs}h#{min}min"
  end

  def total_time
    total_worked_min = 0

    @shifts.each do |shift|
      total_worked_min += shift_duration_in_min(shift[:time_in], shift[:time_out])
    end

    shift_duration_formatted(total_worked_min)
  end

end
